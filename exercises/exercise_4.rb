require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

Store.create do |x|
  x.name = "Surrey"
  x.annual_revenue = 224000
  x.mens_apparel = false
  x.womens_apparel = true
end

Store.create do |x|
  x.name = "Whistler"
  x.annual_revenue = 1900000
  x.mens_apparel = true
  x.womens_apparel = false
end

Store.create do |x|
  x.name = "Yaletown"
  x.annual_revenue = 430000
  x.mens_apparel = true
  x.womens_apparel = true
end

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue >= 1000000")
@womens_stores.each do |store|
  puts "name: #{store.name}, annual_revenue: #{store.annual_revenue}"
end
