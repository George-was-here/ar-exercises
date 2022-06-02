require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
@store3 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
@store4 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store5 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true).order(created_at: :desc)
@mens_stores.each do |data|
  puts "Store Name: #{data.name} \n Annual Revenue: #{data.annual_revenue}"
end

@womens_stores_low_revenue = Store.where("womens_apparel = true and   annual_revenue < 1000000").order(created_at: :desc)

@womens_stores_low_revenue.each do |data|
  puts "Store Name: #{data.name} \n Annual Revenue: #{data.annual_revenue}"
end

puts "Women's store count:", @womens_stores_low_revenue.count, "Men's store count:",@mens_stores.count, "Total store count:", Store.count