# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

Student.delete_all
SchoolClass.delete_all

20.times { Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name) }
7.times { SchoolClass.create(title: Faker::Educator.subject, room_number:Faker::Number.number(digits: 3))}
