# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
StrollDogJoin.destroy_all

5.times do |i|
	City.create(id: i + 1, name: Faker::Address.city)
end

10.times do |i|
	Dogsitter.create(id: i + 1, name: Faker::Name.first_name, email: Faker::Internet.email, city: City.find(1 + rand(5)))
end

50.times do |i|
	Dog.create(id: i + 1, name: Faker::Dog.name, race: Faker::Dog.breed, city: City.find(1 + rand(5)))
end

20.times do |i|
	r = 1 + rand(10)
	Stroll.create(id: i + 1,dogsitter: Dogsitter.find(r), date: Faker::Date.forward(365), city: Dogsitter.find(r).city)
end

100.times do |i|
	d = Dog.find(1 + rand(50))
	s = Stroll.find(1 + rand(20))
	if d.city == s.city
		StrollDogJoin.create(id: i + 1, dog: d, stroll: s)
	end
end