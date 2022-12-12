require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

print "Enter a store name: "
store_name = gets.chomp

@store7 = Store.create do |x|
  x.name = store_name
  x.annual_revenue = ""
  x.mens_apparel = ""
  x.womens_apparel = ""
end

puts @store7.errors.full_messages
