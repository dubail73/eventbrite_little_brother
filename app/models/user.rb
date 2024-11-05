class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

    # L'utilisateur administre plusieurs événements
    has_many :administered_events, class_name: 'Event', foreign_key: 'admin_id'

    # L'utilisateur participe à plusieurs événements via le modèle Participation
    has_many :attendances
    has_many :attendanced_events, through: :attendances, source: :event
    
    after_create :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end
end
