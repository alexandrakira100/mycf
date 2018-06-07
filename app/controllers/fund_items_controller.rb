class FundItemsController < ApplicationController

  before_action :set_fund, only: [:new, :create, :destroy ]

  before_action :set_fund_item, only: [:edit, :update, :destroy ]

  def new
    @fund_item = FundItem.new
    @coins = Coin.all
  end

  def create
    @fund_item = FundItem.new(fund_item_params)
    @fund_item.coin_purchase_price_in_cents = @fund_item.coin.price_in_cents
    @fund_item.fund = @fund
    if @fund_item.save
      redirect_to fund_path(@fund)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @fund_item.update(fund_item_params)
    redirect_to fund_path(@fund)
  end

  def destroy
    @fund_item.destroy
    redirect_to fund_path(@fund)
  end

  private

  def set_fund
    @fund = Fund.find(params[:fund_id])
  end

  def set_fund_item
    @fund_item = FundItem.find(params[:id])
  end

  def fund_item_params
    params.require(:fund_item).permit(:coin, :coin_id, :quantity)
  end
end
