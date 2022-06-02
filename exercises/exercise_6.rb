require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Vino", last_name: "M", hourly_rate: 25)
@store2.employees.create(first_name: "Zoe", last_name: "Burt", hourly_rate: 25)
@store2.employees.create(first_name: "George", last_name: "Burt", hourly_rate: 60)
@store3.employees.create(first_name: "Stephen", last_name: "Dedalus", hourly_rate: 60)
@store3.employees.create(first_name: "Buster", last_name: "Keaton", hourly_rate: 80)
@store4.employees.create(first_name: "Otto", last_name: "Dix", hourly_rate: 120)
@store4.employees.create(first_name: "Buck", last_name: "Mulligan", hourly_rate: 60)
@store5.employees.create(first_name: "Fats", last_name: "Domino", hourly_rate: 120)

puts "Total of all employees", Employee.count