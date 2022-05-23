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
# require 'json'
require 'faker'
# buffer = Cloudinary::Api.resources.to_a[0][1]
puts "Deleting database"

Meetup.destroy_all
Pet.destroy_all
User.destroy_all

puts "Creating users..."

user_1 = User.create!(first_name: "Leo", last_name: "Devlin", phone: Faker::PhoneNumber.area_code, location: "NY", email: "leo@gmail.com", password: 123456, notes: "Found near the Empire State Building")
user_2 = User.create!(first_name: "Luna", last_name: "Jackson", phone: Faker::PhoneNumber.area_code, location: "NJ", email: "luna@gmail.com", password: 123456, notes: "Found near the Circle K.")
user_3 = User.create!(first_name: "Tempestt", last_name: "Woodson", phone: Faker::PhoneNumber.area_code, location: "PA", email: "temp@gmail.com", password: 123456, notes: "Found in the woods")
user_4 = User.create!(first_name: "Kamilyah", last_name: "Woods", phone: Faker::PhoneNumber.area_code, location: "PA", email: "kam@gmail.com", password: 123456, notes: "Roaming in the park")
user_5 = User.create!(first_name: "Teddy", last_name: "Smith", phone: Faker::PhoneNumber.area_code, location: "PA", email: "ted@gmail.com", password: 123456, notes: "Very friendly and looking for home.  Found near the bank.")
user_6 = User.create!(first_name: "Pam", last_name: "Anderson", phone: Faker::PhoneNumber.area_code, location: "AL", email: "pam@gmail.com", password: 123456, notes: "Ran in front of my car near Highway 72.  I'm happy I saved it!")
user_7 = User.create!(first_name: "Amy", last_name: "Jones", phone: Faker::PhoneNumber.area_code, location: "MS", email: "amy@gmail.com", password: 123456, notes: "Very cute and vocal.  Was greeting people at the gas station.")
user_8 = User.create!(first_name: "Tanya", last_name: "Russell", phone: Faker::PhoneNumber.area_code, location: "VA", email: "tan@gmail.com", password: 123456, notes: "Followed us on our hiking trail in the Shenandoah Mountains.")
user_9 = User.create!(first_name: "Bryon", last_name: "Weather", phone: Faker::PhoneNumber.area_code, location: "PA", email: "bry@gmail.com", password: 123456, notes: "Found on my doorstep!!!")
user_10 = User.create!(first_name: "Raymond", last_name: "Wooddall", phone: Faker::PhoneNumber.area_code, location: "PA", email: "ray@gmail.com", password: 123456, notes: "Walked outside and found a lost pet snuggling under my car!")

puts "Creating pets..."

pet_1 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "white", location: "NY", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, status: "", sex: "undetermined", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_1)
pet_2 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "brown",  location: "NJ", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, status: "", sex: "undetermined", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_2)
pet_3 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "brown", location: "PA", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, status: "", sex: "undetermined", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_3)
pet_4 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "black", location: "PA", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, status: "", sex: "female", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_4)
pet_5 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "cream", location: "PA", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: true, status: "", sex: "undetermined", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_5)
pet_6 = Pet.create!(species: "cat", name: "", age: rand(1..12), color: "gray", location: "AL", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: false, status: "", sex: "male", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_6)
pet_7 = Pet.create!(species: "cat", name: "", age: rand(1..12), color: "red", location: "MS", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: false, status: "", sex: "undetermined", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_7)
pet_8 = Pet.create!(species: "dog", name: "", age: rand(1..12), color: "black", location: "VA", description: "", date_found: Faker::Date.between(from: 120.days.ago, to: Date.today), has_id: false, status: "", sex: "female", latitude: Faker::Address.latitude, longitude: Faker::Address.longitude, owner: User.all.sample, custodian: user_8)

puts "Creating meetups..."

meetup_1 = Meetup.create!(pet_id: pet_6)
meetup_2 = Meetup.create!(pet_id: pet_7)


puts "Created #{User.count} user(s), #{Pet.count} pet(s) and #{Meetup.count} meetup(s)."
