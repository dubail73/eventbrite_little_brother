# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Suppression des utilisateurs existants pour éviter les doublons
# db/seeds.rb

# Suppression des utilisateurs existants pour éviter les doublons
# Création d'utilisateurs avec des adresses yopmail
users = [
  { first_name: "Alice", last_name: "Smith", email: "alice@yopmail.com" },
  { first_name: "Bob", last_name: "Jones", email: "bob@yopmail.com" },
  { first_name: "Charlie", last_name: "Brown", email: "charlie@yopmail.com" },
  { first_name: "David", last_name: "Wilson", email: "david@yopmail.com" },
  { first_name: "Eve", last_name: "Johnson", email: "eve@yopmail.com" }
]

# Enregistrement des utilisateurs dans la base de données
users.each do |user_data|
  User.create(user_data)
end

puts "Création de #{users.size} utilisateurs avec des emails @yopmail.com terminée."
