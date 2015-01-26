class UserMailer < ActionMailer::Base
  default from: "menu.service@andela.co"

  def user_reminder(user)
    @user = user
    @url = 'http://andela-grub.herokuapp.com'
    mail(to: user.email, subject: 'Please place your meal orders for tomorrow')
  end

  def admin_reminder
    @user = User.find_by(admin: true)
    @url = 'http://andela-grub.herokuapp.com'
    mail(to: @user.email, subject: 'Please create meal options for tomorrow')
  end
end
