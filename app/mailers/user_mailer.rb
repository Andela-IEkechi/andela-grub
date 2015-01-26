class UserMailer < ActionMailer::Base
  default from: "reminders@example.com"

  def user_reminder
    @user = User.find(2)
    @url = 'http://andela-grub.herokuapp.com'
    mail(to: @user.email, subject: 'Please place your meal orders for tomorrow')
  end

  def admin_reminder
    @user = User.where(admin: true)
    @url = 'http://andela-grub.herokuapp.com'
    mail(to: @user.email, subject: 'Please create meal options for tomorrow')
  end
end
