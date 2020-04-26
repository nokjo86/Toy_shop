# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Toy.all.length
b = User.all.length
c = Manufacturer.all.length


Toy.delete_all
User.delete_all
Manufacturer.delete_all


puts "#{a} toy, #{b} user and #{c} manufacturer records deleted"

for i in 1..3
    Manufacturer.create(
        name: Faker::Company.name + " " + Faker::Company.suffix,
        location: Faker::Address.street_address)
end

3.times do
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Alphanumeric.alpha(number: 5)
  )
  2.times do
    user.toys.create(
        name: Faker::Superhero.name,
        description: "Toy can do #{Faker::Superhero.power}",
        date_posted: Time.now,
        posted_by: ["Sally", "Sam", "Tyson", "Mark"].sample,
        manufacturer_id: rand(1..3))
  end
end
  puts "#{Toy.all.length} toys created"

