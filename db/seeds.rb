# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all

20.times do
  Student.create(first_name: Faker::Ancient.god, last_name: Faker::JapaneseMedia::DragonBall.character)
  SchoolClass.create(title: Faker::TvShows::SouthPark.quote, room_number: rand(1..10))
end
