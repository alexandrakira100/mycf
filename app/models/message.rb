class Message < ApplicationRecord
  belongs_to :user
  belongs_to :fund
  after_create :broadcast_message
  validates :content, presence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end

  def broadcast_message
    ActionCable.server.broadcast("fund_#{fund.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/show",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: user.id
    })
  end

end
