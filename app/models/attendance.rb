class Attendance < ApplicationRecord

    # Chaque participation appartient à un utilisateur et à un événement
    belongs_to :user
    belongs_to :event

    after_create :send_event_participation_email

  private

  def send_event_participation_email
    UserMailer.event_participation_email(self).deliver_now
  end
  
end
