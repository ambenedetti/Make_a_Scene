require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.destroy_all
Booking.destroy_all
Product.destroy_all
User.destroy_all

puts 'Creating user'

user1 = User.create(email: "prueba@prueba.org", password: "password", first_name: "nombre", last_name: "apellido")

puts 'Creating 10 fake products...'

10.times do
  product = Product.create!(
    title: Faker::Appliance.equipment,
    description: Faker::Quote.yoda,
    daily_cost: 100,
    location: Faker::Address.city,
    category: "costumes",
    style: Faker::Ancient.god,
    user: user1
  )

  Image.create(product: product, data: "http://outofthedustrentals.com/wp-content/uploads/2016/06/04-1287-product/OanaFoto_OOTD_Inventory341.jpg")

  puts product.title
end

puts "Completed seeding"
