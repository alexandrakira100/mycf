class Membership < ApplicationRecord
  belongs_to :fund
  belongs_to :user
  validates :allocation_share, numericality: { greater_than: 0 }

  def allocation_share_percentage
    ((allocation_share / fund.total_size) * 100).round(2)
  end
end
