class Membership < ApplicationRecord
  belongs_to :fund
  belongs_to :user
  validates :allocation_share, numericality: { greater_than: 0, less_than: 100 }
end
