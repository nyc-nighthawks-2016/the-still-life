class ReminderMailer < ApplicationMailer


	def email_reminder(user, regime)
    @user = user
    @regime = regime
    mail to: user.email, subject: regime.practice.name
  end


end
