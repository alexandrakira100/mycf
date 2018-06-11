class CoinValuesController < ApplicationController

  def create
    @coin_value= CoinValue.new(coin_value_params)
  end

  private

  def coin_value_params
    params.require(:coin_value).permit(:historical_price)
  end
end


