class Coin < ApplicationRecord
  has_many :fund_items
  validates :price_in_cents, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true
end
