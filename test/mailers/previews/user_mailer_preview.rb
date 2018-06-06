# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/invite
  def invite
    user = User.first
    UserMailer.invite(user).deliver_now
  end

end
