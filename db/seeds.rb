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

puts "Creating images"

car = ["https://images.pexels.com/photos/712618/pexels-photo-712618.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/248687/pexels-photo-248687.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/35624/auto-car-cadillac-oldtimer.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1209774/pexels-photo-1209774.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2071/broken-car-vehicle-vintage.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/131811/pexels-photo-131811.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/416757/pexels-photo-416757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1280560/pexels-photo-1280560.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/849835/pexels-photo-849835.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/594384/van-vw-travel-trip-594384.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1534604/pexels-photo-1534604.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
moto = ["https://images.pexels.com/photos/240222/pexels-photo-240222.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1045535/pexels-photo-1045535.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/899238/pexels-photo-899238.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/995487/pexels-photo-995487.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/221299/pexels-photo-221299.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
sillon = ["https://images.pexels.com/photos/839237/pexels-photo-839237.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2103726/pexels-photo-2103726.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1217327/pexels-photo-1217327.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/602225/lunch-diner-table-paris-602225.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2923034/pexels-photo-2923034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2168227/pexels-photo-2168227.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2079451/pexels-photo-2079451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/40504/living-room-victorian-historic-vintage-40504.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1350789/pexels-photo-1350789.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
cassette = ["https://images.pexels.com/photos/4624/vintage-radios.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/159613/ghettoblaster-radio-recorder-boombox-old-school-159613.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1228497/pexels-photo-1228497.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1626481/pexels-photo-1626481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/290657/pexels-photo-290657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/590663/pexels-photo-590663.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
vinilo = ["https://images.pexels.com/photos/1021876/pexels-photo-1021876.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/96857/pexels-photo-96857.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1173651/pexels-photo-1173651.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/145707/pexels-photo-145707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/595699/pexels-photo-595699.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/371836/pexels-photo-371836.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
telefono = ["https://images.pexels.com/photos/163007/phone-old-year-built-1955-bakelite-163007.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/209695/pexels-photo-209695.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1416530/pexels-photo-1416530.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/209634/pexels-photo-209634.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
camara = ["https://images.pexels.com/photos/2249433/pexels-photo-2249433.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/46794/camera-photos-photograph-paper-prints-46794.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1005332/camera-retro-photography-vintage-1005332.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/924675/pexels-photo-924675.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/191160/pexels-photo-191160.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
decoracion = ["https://images.pexels.com/photos/612799/pexels-photo-612799.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/285857/pexels-photo-285857.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/5925/wood-stool-vintage-wooden.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3154324/pexels-photo-3154324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2079449/pexels-photo-2079449.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2923034/pexels-photo-2923034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1058770/pexels-photo-1058770.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2250394/pexels-photo-2250394.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2101704/pexels-photo-2101704.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2447040/pexels-photo-2447040.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/612800/pexels-photo-612800.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/385997/pexels-photo-385997.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
kitchenware = ["https://images.pexels.com/photos/1516424/pexels-photo-1516424.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/893907/pexels-photo-893907.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3094018/pexels-photo-3094018.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2642842/pexels-photo-2642842.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3094041/pexels-photo-3094041.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3094040/pexels-photo-3094040.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/350417/pexels-photo-350417.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1099816/pexels-photo-1099816.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
books = ["https://images.pexels.com/photos/5834/nature-grass-leaf-green.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1831744/pexels-photo-1831744.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/6332/coffee-cup-books-home.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/694740/pexels-photo-694740.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/264635/pexels-photo-264635.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2079451/pexels-photo-2079451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1112048/pexels-photo-1112048.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1005324/literature-book-open-pages-1005324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/762687/pexels-photo-762687.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2099266/pexels-photo-2099266.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1130980/pexels-photo-1130980.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
cartoys = ["https://images.pexels.com/photos/217158/pexels-photo-217158.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/555869/pexels-photo-555869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2767818/pexels-photo-2767818.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/249343/pexels-photo-249343.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2691478/pexels-photo-2691478.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/381228/pexels-photo-381228.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"]
costume = ["https://images.pexels.com/photos/354943/pexels-photo-354943.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3095105/pexels-photo-3095105.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2106673/pexels-photo-2106673.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3071456/pexels-photo-3071456.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2538122/pexels-photo-2538122.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1262453/pexels-photo-1262453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/784707/pexels-photo-784707.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/3190880/pexels-photo-3190880.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/35797/carnival-mask-costume-panel.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/604694/pexels-photo-604694.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1144283/pexels-photo-1144283.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2335316/pexels-photo-2335316.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/78793/automotive-defect-broken-car-wreck-78793.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1336873/pexels-photo-1336873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/374679/pexels-photo-374679.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/54611/trousers-underwear-nostalgia-past-54611.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
tools = ["https://images.pexels.com/photos/995300/pexels-photo-995300.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/262034/pexels-photo-262034.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/190537/pexels-photo-190537.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1319460/pexels-photo-1319460.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/296230/pexels-photo-296230.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/374861/pexels-photo-374861.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/957090/workshop-rustic-hammer-wrench-957090.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/162644/tool-hammer-repair-master-162644.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1571736/pexels-photo-1571736.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/162631/blacksmith-tools-shop-rustic-162631.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/220639/pexels-photo-220639.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/301703/pexels-photo-301703.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/1029243/pexels-photo-1029243.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]
bag = ["https://images.pexels.com/photos/2393813/pexels-photo-2393813.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/808149/pexels-photo-808149.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/208907/pexels-photo-208907.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/209885/pexels-photo-209885.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2282479/pexels-photo-2282479.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/247929/pexels-photo-247929.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/46794/camera-photos-photograph-paper-prints-46794.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", "https://images.pexels.com/photos/2977304/pexels-photo-2977304.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"]

puts 'Creating user'

user1 = User.create(email: "prueba@prueba.org", password: "password", first_name: "Barney", last_name: "Stinson")

puts 'Creating 10 fake products for Barney...'

10.times do
  product = Product.create!(
    title: ["Vintage table", "50 year old chairs", "Old school table", "60s sofa", "Rococo table", "Great prop for era movies"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "furniture",
    style: Faker::Ancient.god,
    user: user1
  )

  3.times do
    Image.create!(remote_data_url: sillon.sample, product: product)
  end

  puts product.title
end

5.times do
  product = Product.create!(
    title: ["Vintage luggage", "50 year old bags", "Bags for 50's movies", "60s luggage", "End of century luggage", "Great bags for era movies"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "miscellaneous",
    style: Faker::Ancient.god,
    user: user1
  )

  3.times do
    Image.create!(remote_data_url: bag.sample, product: product)
  end

  puts product.title
end

5.times do
  product = Product.create!(
    title: ["Vintage vinyl", "Vinyl player", "Turntable", "60s vinyl collection", "Old school vibe music!"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "miscellaneous",
    style: Faker::Ancient.god,
    user: user1
  )

  3.times do
    Image.create!(remote_data_url: vinilo.sample, product: product)
  end

  puts product.title
end

user2 = User.create(email: "ted@mosby.org", password: "password", first_name: "Ted", last_name: "Mosby")

puts 'Creating 10 fake products for Ted...'

5.times do
  product = Product.create!(
    title: ["Vintage car", "60 year old car", "Vehicules for movies", "50s car", "Working vintage car"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "vehicles",
    style: Faker::Ancient.god,
    user: user2
  )

    3.times do
    Image.create!(remote_data_url: car.sample, product: product)
  end

  puts product.title
end

10.times do
  product = Product.create!(
    title: ["Vintage tools", "Car tools", "Tools for movies", "50s tools", "Working general tools"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "tools",
    style: Faker::Ancient.god,
    user: user2
  )

    3.times do
    Image.create!(remote_data_url: tools.sample, product: product)
  end

  puts product.title
end

5.times do
  product = Product.create!(
    title: ["Vintage motorbike", "Motorbike diaries", "Vehicules for movies", "Cool old school bike", "Functioning motorbike"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "vehicles",
    style: Faker::Ancient.god,
    user: user2
  )

    3.times do
    Image.create!(remote_data_url: moto.sample, product: product)
  end

  puts product.title
end

user3 = User.create(email: "marshall@eriksen.org", password: "password", first_name: "Marshall", last_name: "Eriksen")

puts 'Creating 10 fake products for Marshall...'

5.times do
  product = Product.create!(
    title: ["Vintage cassette", "Music atrezzo", "Old school cassettes", "Cassette", "Radio"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "electronics",
    style: Faker::Ancient.god,
    user: user3
  )

    3.times do
    Image.create!(remote_data_url: cassette.sample, product: product)
  end

  puts product.title
end

5.times do
  product = Product.create!(
    title: ["Vintage camera", "Polaroid and reflex", "Old school camera", "Camera", "50 year old camera"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "electronics",
    style: Faker::Ancient.god,
    user: user3
  )

    3.times do
    Image.create!(remote_data_url: camara.sample, product: product)
  end

  puts product.title
end

user4 = User.create(email: "lily@aldrin.org", password: "password", first_name: "Lily", last_name: "Aldrin")

puts 'Creating 10 fake products for Lily...'

10.times do
  product = Product.create!(
    title: ["Vintage kitchenware", "Cups", "Kitchen utensils", "60's kitchenware", "kitchen props"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "kitchenware",
    style: Faker::Ancient.god,
    user: user4
  )

    3.times do
    Image.create!(remote_data_url: kitchenware.sample, product: product)
  end

  puts product.title
end

10.times do
  product = Product.create!(
    title: ["Vintage car toys", "Car toys", "Car toy collection", "Cute vehicule toys", "Decorative car toys"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "toys",
    style: Faker::Ancient.god,
    user: user4
  )

    3.times do
    Image.create!(remote_data_url: cartoys.sample, product: product)
  end

  puts product.title
end

10.times do
  product = Product.create!(
    title: ["Vintage costumes", "Varied costume selection", "Costume for all ages and time", "Good quality costume", "Costume"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "costumes",
    style: Faker::Ancient.god,
    user: user4
  )

    3.times do
    Image.create!(remote_data_url: costume.sample, product: product)
  end

  puts product.title
end

10.times do
  product = Product.create!(
    title: ["Vintage books", "Old book collection", "30 and 50 year old books", "60's books", "Books in great state"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "books",
    style: Faker::Ancient.god,
    user: user4
  )

    3.times do
    Image.create!(remote_data_url: books.sample, product: product)
  end

  puts product.title
end
puts 'Creating 10 fake bookings for Lily...'

10.times do
  booking = Booking.create!(
    user: user4,
    product: Product.all.sample,
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts 'Creating 10 fake bookings for Robin...'

user5 = User.create(email: "robin@scherbatsky.org", password: "password", first_name: "Robin", last_name: "Scherbatsky")

puts 'Creating 10 fake products for Lily...'

10.times do
  product = Product.create!(
    title: ["Vintage decor", "Atrezzo", "Old school decoration", "General end of era decoration", "Shelf props"].sample,
    description: Faker::Quote.yoda,
    daily_cost: [50, 100, 75, 560, 780, 350, 250, 85].sample,
    location: Faker::Address.city,
    category: "decor",
    style: Faker::Ancient.god,
    user: user4
  )

    3.times do
    Image.create!(remote_data_url: decoracion.sample, product: product)
  end

  puts product.title
end

15.times do
  booking = Booking.create!(
    user: user5,
    product: Product.all.sample,
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
    product: Product.all.sample,
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
    product: Product.all.sample,
    start_date: rand(1.day.ago..5.weeks.from_now).to_date,
    end_date: rand(1.day.ago..5.weeks.from_now).to_date,
    total_cost: [450, 100, 75, 560, 780, 350, 250, 85].sample,
    status: [0, 1, 2, 3].sample
  )

  puts booking.total_cost
end

puts "Completed seeding"
