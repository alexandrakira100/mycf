class Coin < ApplicationRecord
  has_many :fund_items
  has_many :coin_values
  validates :price_in_cents, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true
end
