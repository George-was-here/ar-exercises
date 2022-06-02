require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts "Total annual revenue of all stores", Store.sum(:annual_revenue)
puts "Average annual revenue", Store.average(:annual_revenue)
puts "Number of stores with 1M + revenue", Store.where("annual_revenue > 1000000").count