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


# require "open-uri"
# require 'json'



# buffer = Cloudinary::Api.resources.to_a[0][1]

# Commission.destroy_all
# User.destroy_all
# Artwork.destroy_all
# Service.delete_all


# user_one = User.create(first_name: 'Pablo', last_name: 'Picasso', email: 'pablo@gmail.com', phone_number: '123-456-7890', password: 'abc12345', role: 'artist')
# user_two = User.create(first_name: 'Leo', last_name: 'Da Vinchi', email: 'leo@gmail.com', phone_number: '123-456-7890', password: 'abc12345', role: 'artist')
# user_three = User.create(first_name: 'Frida', last_name: 'Cannelle', email: 'frida@gmail.com', phone_number: '123-456-7890', password: 'abc12345', role: 'artist')
# user_four = User.create(first_name: 'Aphonso', last_name: 'Dali', email: 'aphonso@gmail.com', phone_number: '123-456-7890', password: 'abc12345', role: 'artist')


# category_one = 'painting'
# category_two = 'digital art'
# category_three = 'sculpture'

# puts "Generating Artworks..."
# buffer.each do |object|
#   file = URI.open(object["url"])
#   article = Artwork.new(title: Faker::Kpop.boy_bands, category: [category_one, category_two, category_three].sample, user: [user_one, user_two].sample)
#   article.photo.attach(io: file, filename: object["public_id"] + '.jpg', content_type: 'image/jpg')
#   article.save!
# end

# file_1 = URI.open("https://res.cloudinary.com/dmty5wfjh/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1645792818/ping_pong.jpg")
# article_1 = Artwork.new(title: "My one true love", category: category_one, user: user_four)
# article_1.photo.attach(io: file_1, filename: 'ping_pong.jpg', content_type: 'image/jpg')
# article_1.save!
# file_2 = URI.open("https://res.cloudinary.com/dmty5wfjh/image/upload/w_1000,ar_1:1,c_fill,g_auto,e_art:hokusai/v1645792819/smiley_face.jpg")
# article_2 = Artwork.new(title: "It's me!", category: category_one, user: user_three)
# article_2.photo.attach(io: file_2, filename: 'smiley_face.jpg', content_type: 'image/jpg')
# article_2.save!

# service_one = Service.create(name: 'Large painting', category: 'painting', price: 100, user: user_one)
# service_two = Service.create(name: 'Medium painting', category: 'painting', price: 50, user: user_one)
# service_three = Service.create(name: 'Small painting', category: 'painting', price: 25, user: user_one)
# service_four = Service.create(name: 'Large painting', category: 'painting', price: 100, user: user_two)
# service_five = Service.create(name: 'Medium painting', category: 'painting', price: 50, user: user_two)
# service_six = Service.create(name: 'Small painting', category: 'painting', price: 25, user: user_two)
# Commission.create(user_id: 1, art_description: "its cool", art_price: service_one.price, service_id: service_one.id)
# puts "Generated #{Artwork.count} artworks"
