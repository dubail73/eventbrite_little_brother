class User < ApplicationRecord

    # L'utilisateur administre plusieurs événements
    has_many :administered_events, class_name: 'Event', foreign_key: 'admin_id'

    # L'utilisateur participe à plusieurs événements via le modèle Participation
    has_many :attendances
    has_many :attendanced_events, through: :attendances, source: :event
    
end
