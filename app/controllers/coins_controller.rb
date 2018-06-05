class CoinsController < ApplicationController
  def create
    @coin = Coin.new(coin_params)
    if @coin.save
      redirect_to funds_path
    else
      render "funds/show"
    end
  end

  def edit
  end

  def update
    @coin.update(coin_params)
    redirect_to coin_path(@coin)
  end

  def destroy
    @coin.destroy
    redirect_to coins_path
  end
  private

  def coin_params
    params.require(:coin).permit(:name)
  end
end
