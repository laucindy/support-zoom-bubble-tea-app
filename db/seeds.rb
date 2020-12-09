# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Owner.create!(name: "James Wong")
Owner.create!(name: "Jennifer Li")

10.times do
  Owner.create!(name: Faker::Name.name)
end

Store.create!(
  name: "Chatime",
  address: "132 Dundas St W",
  city: "Toronto",
  brand: "Chatime",
  owner_id: 1
)

Store.create!(
  name: "The Alley",
  address: "513 Sussex Dr",
  city: "Ottawa",
  brand: "The Alley",
  owner_id: 2
)

Store.create!(
  name: "CoCo Fresh Tea & Juice",
  address: "505 Hwy 7",
  city: "Toronto",
  brand: "CoCo",
  owner_id: 1
)

# faker gem doesn't have bubble tea store names, so we'll use restaurant names instead
47.times do
  random_owner = rand(1..12)
  store_name = Faker::Restaurant.name + " & Tea"

  Store.create!(
    name: store_name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    brand: store_name,
    owner_id: random_owner
  )
end

BubbleTea.create!(
  flavor: "HK Milk Tea",
  size: "Regular",
  price: 7.99
)

BubbleTea.create!(
  flavor: "HK Milk Tea",
  size: "Large",
  price: 8.99
)

BubbleTea.create!(
  flavor: "Matcha Latte",
  size: "Regular",
  price: 6.49
)

BubbleTea.create!(
  flavor: "Matcha Latte",
  size: "Large",
  price: 7.49
)

# use coffee blend names instead, as the faker gem doesn't include bubble tea names
46.times do
  drink_size = ["Regular", "Large"].sample
  drink_price = ((Faker::Number.between(from: 6, to: 10)).to_s + "." + (Faker::Number.number(digits: 2)).to_s).to_f

  BubbleTea.create!(
    flavor: Faker::Coffee.blend_name,
    size: drink_size,
    price: drink_price
  )
end
