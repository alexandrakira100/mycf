class FundItem < ApplicationRecord
  belongs_to :fund
  belongs_to :coin
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :coin_purchase_price_in_cents, presence: true, numericality: { greater_than: 0 }
  monetize :coin_purchase_price_in_cents, as: :coin_purchase_price

  def change
    (((self.coin.price_in_cents - self.coin_purchase_price_in_cents) * self.quantity) / (self.coin_purchase_price_in_cents / 100 * self.quantity)).round(1)
  end

end

