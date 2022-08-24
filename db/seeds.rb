# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'
puts "cleaning database.."
Review.destroy_all
10.times do
  restaurant = Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_name,
  phone_number: Faker::PhoneNumber.phone_number,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  # rating: rand(0..5)
)
  puts "restaurant with name: #{restaurant.name} has been created."
end
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
