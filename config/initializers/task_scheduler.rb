# require 'rufus-scheduler'
#
# scheduler = Rufus::Scheduler.new
#
# # Send the digest every day at noon
# scheduler.cron("0 12 * * *") do
#   UserMailer.user_reminder.deliver()
# end
#
# scheduler = Rufus::Scheduler.new
#
# # Send the digest every day at noon
# scheduler.cron("0 12 * * *") do
#   UserMailer.admin_reminder
# end
#
# scheduler = Rufus::Scheduler.new
#
# scheduler.every("1m") do
#   UserMailer.user_reminder.deliver()
# end