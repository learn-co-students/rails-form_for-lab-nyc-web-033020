# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all
SchoolClass.destroy_all

Student.create(first_name: 'Mishy', last_name: 'Jari')
SchoolClass.create(title: 'Super Awesome Things', room_number: 2112)
