class Message < ApplicationRecord
  belongs_to :user
  belongs_to :fund
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end
end
