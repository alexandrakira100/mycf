  class Fund < ApplicationRecord
  has_many :fund_items
  validates :name, presence: true
  belongs_to :owner, class_name: :User, foreign_key: :owner_id
  has_many :memberships
  has_many :members, through: :memberships, source: :user, class_name: :User
  has_many :messages, dependent: :destroy
end
