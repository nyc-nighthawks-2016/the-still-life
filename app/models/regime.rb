class Regime < ActiveRecord::Base
  belongs_to :practice
  belongs_to :user
	after_create :reminder

  @@REMINDER_TIME = 30.minutes # minutes before appointment

  def reminder
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    time_str = self.daily_practice_time.strftime("%l : %M %P")
    reminder = "Hi #{self.user.first_name}. You have meditation at #{time_str}."
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => ENV['JONS_NUMBER'],
      :body => reminder,
    )
    puts message.to
  end

  def when_to_run
    daily_practice_time - @@REMINDER_TIME
  end

  handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }

end
