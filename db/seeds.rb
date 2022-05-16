# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
require 'json'
require 'faker'
# buffer = Cloudinary::Api.resources.to_a[0][1]


puts "Deleting database"

Pet.destroy_all
User.destroy_all
Meetup.destroy_all

puts "Creating users"

user_1 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Found near the Empire State Building")
user_2 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: "NJ", email: Faker::Internet.email, password: 123456, notes: "Found near the Circle K.")
user_3 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Found in the woods")
user_4 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Roaming in the park")
user_5 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Very friendly and looking for home.  Found near the bank.")
user_6 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: "AL", email: Faker::Internet.email, password: 123456, notes: "Ran in front of my car near Highway 72.  I'm happy I saved it!")
user_7 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Very cute and vocal.  Was greeting people at the gas station.")
user_8 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: "VA", email: Faker::Internet.email, password: 123456, notes: "Followed us on our hiking trail in the Shenandoah Mountains.")
user_9 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Found on my doorstep!!!")
user_10 = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone: Faker::PhoneNumber.area_code, location: Faker::Address.state_abbr, email: Faker::Internet.email, password: 123456, notes: "Walked outside and found a lost pet snuggling under my car!")

puts "Creating pets"

pet_1 = Pet.create(species: "dog", location: "NY", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, custodian_id: user_1, sex: "Undetermined")


puts "#{User.count} user(s) and #{Pet.count} pet(s)"
