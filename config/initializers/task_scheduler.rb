require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

# Send the reminder to users every day at 5pm
scheduler.cron("0 17 * * *") do
 User.where(admin: false).each do |user|
    UserMailer.user_reminder(user).deliver
 end
end

scheduler = Rufus::Scheduler.new

# Send the reminder to admin every day at 4pm
scheduler.cron("0 16 * * *") do
  UserMailer.admin_reminder.deliver
end
