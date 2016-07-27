class ReminderMailer < ApplicationMailer


	def email_reminder(regime)
    @user = regime.user
    @regime = regime
    mail to: user.email, subject: "Practice Reminder"
  end


end
