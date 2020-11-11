# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

puts 'Creating 10 fake flats...'

10.times do
  flat = Flat.create!(
    name: Faker::TvShows::Simpsons.location,
    address: Faker::Address.full_address,
    description: Faker::TvShows::DrWho.quote,
    price_per_night: rand(30..100),
    number_of_guests: rand(2..10)
  )
end

puts 'Finished'
