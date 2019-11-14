require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Image.destroy_all
Product.destroy_all
User.destroy_all

puts 'Creating user'

user1 = User.create(email: "prueba@prueba.org", password: "password", first_name: "Barney", last_name: "Stinson")

puts 'Creating 10 fake products for Barney...'

10.times do
  product = Product.create!(
    title: Faker::Appliance.equipment,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: ["costumes", "vehicles", "furniture", "electronics", "decor", "books", "toys", "kitchenware", "tools", "miscellaneous"].sample,
    style: Faker::Ancient.god,
    user: user1
  )

  puts product.title
end

user2 = User.create(email: "ted@mosby.org", password: "password", first_name: "Ted", last_name: "Mosby")

puts 'Creating 10 fake products for Ted...'

10.times do
  product = Product.create!(
    title: Faker::Appliance.equipment,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: ["costumes", "vehicles", "furniture", "electronics", "decor", "books", "toys", "kitchenware", "tools", "miscellaneous"].sample,
    style: Faker::Ancient.god,
    user: user2
  )

  puts product.title
end

user3 = User.create(email: "marshall@eriksen.org", password: "password", first_name: "Marshall", last_name: "Eriksen")

puts 'Creating 10 fake products for Marshall...'

10.times do
  product = Product.create!(
    title: Faker::Appliance.equipment,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: ["costumes", "vehicles", "furniture", "electronics", "decor", "books", "toys", "kitchenware", "tools", "miscellaneous"].sample,
    style: Faker::Ancient.god,
    user: user3
  )

  puts product.title
end

user4 = User.create(email: "lily@aldrin.org", password: "password", first_name: "Lily", last_name: "Aldrin")

puts 'Creating 10 fake products for Lily...'

10.times do
  product = Product.create!(
    title: Faker::Appliance.equipment,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: ["costumes", "vehicles", "furniture", "electronics", "decor", "books", "toys", "kitchenware", "tools", "miscellaneous"].sample,
    style: Faker::Ancient.god,
    user: user4
  )

  puts product.title
end

puts 'Creating 10 fake bookings for Lily...'

10.times do
  booking = Booking.create!(
    user: user4,
    product: Product.find(rand(1..29)),
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts 'Creating 10 fake bookings for Robin...'

user5 = User.create(email: "robin@scherbatsky.org", password: "password", first_name: "Robin", last_name: "Scherbatsky")

15.times do
  booking = Booking.create!(
    user: user5,
    product: Product.find(rand(1..39)),
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts 'Creating 10 fake bookings for Ted...'

10.times do
  booking = Booking.create!(
    user: user2,
    product: Product.find(rand(21..39)),
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts 'Creating 10 fake bookings for Barney...'

10.times do
  booking = Booking.create!(
    user: user1,
    product: Product.find(rand(11..39)),
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts "Completed seeding"
