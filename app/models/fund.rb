  class Fund < ApplicationRecord
  has_many :fund_items
  validates :name, presence: true
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
  has_many :memberships
  has_many :members, through: :memberships, source: :user, class_name: :User
  has_many :messages, dependent: :destroy

  def total_fund_value
    sum = 0

    fund_items.each do |fund_item|
      fund_value = (fund_item.coin.price_in_cents / 100.00) * fund_item.quantity
      sum += fund_value
    end

    sum
  end
end
