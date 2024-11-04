class Event < ApplicationRecord
  # Chaque événement a un administrateur, qui est un utilisateur
  belongs_to :admin, class_name: 'User'

  # Les participants, à travers le modèle Participation
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  # Validation pour start_date
  validates :start_date, presence: true
  validate :start_date_cannot_be_in_the_past
 
  # Validation pour duration
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :duration_must_be_multiple_of_5
 
  # Validation pour title
  validates :title, presence: true, length: { minimum: 5, maximum: 140 }
 
  # Validation pour description
  validates :description, presence: true, length: { in: 20..1000 }
 
  # Validation pour price
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
 
  # Validation pour location
  validates :location, presence: true
 
  private
 
  # Méthode pour s'assurer que la start_date n'est pas dans le passé
  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Time.now
      errors.add(:start_date, "ne peut pas être dans le passé")
    end
  end
 
  # Méthode pour s'assurer que la duration est un multiple de 5
  def duration_must_be_multiple_of_5
    if duration.present? && duration % 5 != 0
      errors.add(:duration, "doit être un multiple de 5")
    end
  end
end
