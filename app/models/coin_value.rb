class CoinValue < ApplicationRecord
  belongs_to :coin
  validates :historical_price, presence: true, numericality: { greater_than: 0 }
end
