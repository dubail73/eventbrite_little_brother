class Attendance < ApplicationRecord

    # Chaque participation appartient à un utilisateur et à un événement
    belongs_to :user
    belongs_to :event
  
end
