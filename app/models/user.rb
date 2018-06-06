class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :memberships
  has_many :funds, through: :memberships
  has_many :funds_owned, class_name: :Fund, foreign_key: :owner_id
  has_many :messages, dependent: :destroy
end
