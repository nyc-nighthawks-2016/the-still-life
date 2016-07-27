desc "This task is called by the Heroku scheduler add-on"
# task :update_feed => :environment do
#   puts "Updating feed..."
#   NewsFeed.update
#   puts "done."
# end

task :send_reminders => :environment do
  Regime.all.each do |regime|
		if regime.daily_practice_time.hour == Time.now.hour
			ReminderMailer.email_reminder(regime)
			puts "EMAIL SENT to #{regime.user.email}"
		end
  end

  puts "IT WORKED"
end
