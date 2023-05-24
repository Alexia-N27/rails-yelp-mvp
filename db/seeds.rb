# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all
food_category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

5.times do
  puts 'Creating restaurants...'
  restaurant = Restaurant.new
  restaurant.name = Faker::Restaurant.name
  restaurant.address = Faker::Address.street_address
  restaurant.phone_number = Faker::PhoneNumber.cell_phone
  restaurant.category = food_category.sample
  restaurant.save
  puts 'Finished!'
end
