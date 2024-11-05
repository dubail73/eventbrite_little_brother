class HomeController < ApplicationController
  def index
    @events = Event.all # Charge tous les événements pour l'affichage
  end
end
