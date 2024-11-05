Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]  # Ajoute cette ligne pour le profil utilisateur


  # Routes pour les événements
  resources :events  # Remplace toutes les lignes pour les événements par celle-ci

  get "home/index"  # Route pour la page d'accueil
  root to: 'home#index'  # Page d'accueil

  # Autres routes...
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
