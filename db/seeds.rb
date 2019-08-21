# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

require 'faker'

10.times do
  name = Faker::Hipster.words(number: 2).join(' ').capitalize
  category = %w(chinese italian french japanese belgian).sample
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number
  new_resto = Restaurant.new(name: name, category: category, phone_number: phone_number, address: address)
  new_resto.save
end

counter = 1
10.times do
  3.times do
    content = Faker::Lorem.paragraphs.join(' ')
    rating = rand(0..5)
    restaurant_id = counter
    new_review = Review.new(content: content, rating: rating, restaurant_id: restaurant_id)
    new_review.save!
  end
  counter += 1
end
