namespace :coin_value do
  desc "Creating a history for coins"
  task create_history: :environment do
    ActiveRecord::Base.transaction do
      Coin.find_each do |coin|

        cv = CoinValue.new(
          coin: coin,
          historical_price: coin.coin_values.first.historical_price - 1000
        )
        unless cv.save
          cv.historical_price - 1
        end
        cv.created_at = Date.today - 2.days
        cv.save

        cv = CoinValue.new(
          coin: coin,
          historical_price: coin.coin_values.first.historical_price - 2000
        )
        unless cv.save
          cv.historical_price - 2
        end
        cv.created_at = Date.today - 3.days
        cv.save

        cv = CoinValue.new(
          coin: coin,
          historical_price: coin.coin_values.first.historical_price - 3000
        )
        unless cv.save
          cv.historical_price - 3
        end
        cv.created_at = Date.today - 4.days
        cv.save


        cv = CoinValue.new(
          coin: coin,
          historical_price: coin.coin_values.first.historical_price - 4000
        )
        unless cv.save
          cv.historical_price - 4
        end
        cv.created_at = Date.today - 5.days
        cv.save
      end
    end
  end

  desc "Creates new values for updated coins"
  task create_all: :environment do
    UpdateCoinPriceJob.perform_later
    MakeCoinValueRecordsJob.perform_later
  end

end
