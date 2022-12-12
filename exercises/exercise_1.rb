require_relative '../setup'

puts "Exercise 1"
puts "----------"

Store.create do |x|
  x.name = "Burnaby"
  x.annual_revenue = 300000
  x.mens_apparel = true
  x.womens_apparel = true
end

Store.create do |x|
  x.name = "Richmond"
  x.annual_revenue = 1260000
  x.mens_apparel = false
  x.womens_apparel = true
end

Store.create do |x|
  x.name = "Gastown"
  x.annual_revenue = 190000
  x.mens_apparel = true
  x.womens_apparel = false
end

puts Store.count