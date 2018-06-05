class Fund < ApplicationRecord
  has_many :fund_items
  validates :name, presence: true
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
end
