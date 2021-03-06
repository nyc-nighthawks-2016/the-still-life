class Regime < ActiveRecord::Base
  belongs_to :practice
  belongs_to :user
  after_create :text_reminder
  #after_create :email_reminder
  after_create :create_new_regime

  @@REMINDER_TIME = 30.minutes # minutes before appointment


  def create_new_regime
    tomorrow =  daily_practice_time + 1.days
    regime = Regime.new({
      daily_practice_time: tomorrow,
      practice: self.practice,
      user: self.user
      })
    regime.save
  end

  def text_reminder
    @twilio_number = ENV['TWILIO_NUMBER']
    @ta_sid = ENV['TWILIO_ACCOUNT_SID']
    @aa_token =  ENV['TWILIO_AUTH_TOKEN']
    @number =  ENV['CIACCIS_NUMBER']

    @client = Twilio::REST::Client.new @ta_sid, @aa_token
    time_str = self.daily_practice_time.strftime("%l : %M %P")
    reminder = "Hi #{self.user.first_name}. You have meditation at #{time_str}."
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => @number,
      :body => reminder,
    )
    puts message.to
  end

  def when_to_run_reminder
    daily_practice_time - @@REMINDER_TIME
  end

  def when_to_run_new_regimen
    daily_practice_time.beginning_of_day + 1.days
  end


  handle_asynchronously :text_reminder, :run_at => Proc.new { |i| i.when_to_run_reminder }
  handle_asynchronously :create_new_regime, :run_at => Proc.new { |i| i.when_to_run_new_regimen }

end
