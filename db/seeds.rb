# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Restaurant.destroy_all

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "123456789", category: "french" },
  { name: "Sushi Saito", address: "Tokyo, Japan", phone_number: "987654321", category: "japanese" },
  { name: "La Pizzeria", address: "Rome, Italy", phone_number: "112233445", category: "italian" },
  { name: "Le Gourmet", address: "Brussels, Belgium", phone_number: "667788990", category: "belgian" },
  { name: "Chinatown", address: "London, UK", phone_number: "556677889", category: "chinese" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end
