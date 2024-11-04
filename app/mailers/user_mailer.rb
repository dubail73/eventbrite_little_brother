class UserMailer < ApplicationMailer
  default from: 'no-reply@yourdomain.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Bienvenue chez Eventbrite-little-brother !')
  end

  def event_participation_email(attendance)
    @attendance = attendance
    @event = @attendance.event
    @creator = @event.creator
  
    mail(to: @creator.email, subject: "Nouvelle participation à votre événement!")
  end
  
end
