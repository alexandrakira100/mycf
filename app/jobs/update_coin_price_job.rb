class UpdateCoinPriceJob < ApplicationJob
  queue_as :default

  def perform
    response = HTTParty.get("https://api.coinmarketcap.com/v2/ticker/")
    response["data"].each do |coin_api|
      coin_api[1]["symbol"]
      coin = Coin.find_by(name: coin_api[1]["symbol"])
      next if coin.nil?
      coin.price_in_cents = ((coin_api[1]["quotes"]["USD"]["price"]) * 100).to_i
      coin.save
    end

  end


end
