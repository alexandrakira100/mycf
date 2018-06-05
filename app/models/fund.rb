class Fund < ApplicationRecord
  has_many :fund_items
  belongs_to :user
  validates :name, presence: true, uniqueness: true
end
