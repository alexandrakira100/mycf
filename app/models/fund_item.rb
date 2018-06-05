class FundItem < ApplicationRecord
  belongs_to :fund
  belongs_to :coin
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :coin_purchase_price_in_cents, presence: true, numericality: { greater_than: 0 }
end
