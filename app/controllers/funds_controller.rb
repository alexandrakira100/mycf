class FundsController < ApplicationController

  def index
    @funds = current_user.funds + current_user.funds_owned
  end

  def show
    @fund = Fund.find(params[:id])
    # @fund = Fund.includes(messages: :user).find(params[:id])
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
      Membership.create(fund: @fund, user:current_user, allocation_share:params[:allocation_share].to_f)
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
    @fund = Fund.find(params[:id])
    @fund.destroy
    redirect_to funds_path
  end

  private

  def fund_params
    params.require(:fund).permit(:name)
  end
end
