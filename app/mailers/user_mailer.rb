class UserMailer < ApplicationMailer
  default from: ENV['MAILJET.DEFAULT_FROM']

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenue chez Eventbrite-little-brother !')
  end
  
end
