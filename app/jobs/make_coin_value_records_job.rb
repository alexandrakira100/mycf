class MakeCoinValueRecordsJob < ApplicationJob
  queue_as :default

  def perform
    Coin.find_each do |coin|
      CoinValue.create(coin_id: coin.id, historical_price: coin.price_in_cents)
    # every(1.hour, 'make_coin_value_record')
     end
  end
end




