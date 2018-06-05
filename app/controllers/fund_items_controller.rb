class FundItemsController < ApplicationController
def new
    @fund_item = Fund_Item.new
  end

  def create
    @fund_item = Fund_Item.new(fund_item_params)
    if @fund_item.save
      redirect_to funds_path
    else
      render "funds/show"
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

  def fund_item_params
    params.require(:fund_item).permit(:coin, :quantity)
  end
end
