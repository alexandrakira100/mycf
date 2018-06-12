class Fund < ApplicationRecord
  has_many :fund_items
  has_many :coins, through: :fund_items
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

    sum.round(2)
  end




  def fund_historical_value(number_of_days)
    time = number_of_days.days.ago
    fund_value_number_of_days_ago = 0
    fund_items.each do |fund_item|
      historical_coin_value = fund_item.coin.coin_values.where("created_at >= ?", time).order("created_at DESC").last
      if historical_coin_value.nil?
        historical_coin_value = fund_item.coin.coin_values.where("created_at >= ?", time - 1.day).order("created_at DESC").first
      end
      fund_value_number_of_days_ago += historical_coin_value.historical_price * fund_item.quantity
    end
    return fund_value_number_of_days_ago
  end



  def total_purchase_value
    sum = 0

    fund_items.each do |fund_item|
      fund_value = (fund_item.coin_purchase_price_in_cents / 100.00) * fund_item.quantity
      sum += fund_value
    end

    sum.round(2)
  end

  def profit_margin
    if total_purchase_value > 0
      (((self.total_fund_value - self.total_purchase_value)/(self.total_purchase_value))*100).round(2)
    else 0
    end
  end

  def profitable?
    profit_margin >= 0
  end

  def not_empty_fund?
    self.fund_items.any?
  end

  def total_size
    memberships.pluck(:allocation_share).inject(:+)
  end
end
