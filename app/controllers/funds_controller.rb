class FundsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    # @funds = current_user.funds + current_user.funds_owned
    @funds = Fund.all
  end

  def show
    @fund = Fund.find(params[:id])
    @messages = Message.where(fund: @fund)
    @message = Message.new
    @fund_items = @fund.fund_items
  end

  def new
    @fund = Fund.new
  end

  def create
    @fund = Fund.new(fund_params)
    @fund.owner = current_user
    if @fund.save!
      redirect_to fund_path(@fund)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fund.update(fund_params)
    redirect_to fund_path(@fund)
  end

  def destroy
    @fund.destroy
    redirect_to funds_path
  end

  private

  def fund_params
    params.require(:fund).permit(:name)
  end
end
