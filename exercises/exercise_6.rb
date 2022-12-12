require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Bob", last_name: "Brown", hourly_rate: 60)
@store1.employees.create(first_name: "Alice", last_name: "Andrew", hourly_rate: 55)
@store1.employees.create(first_name: "Carol", last_name: "Charles", hourly_rate: 40)
@store1.employees.create(first_name: "Dennis", last_name: "Danby", hourly_rate: 40)
@store1.employees.create(first_name: "Elijah", last_name: "Endy", hourly_rate: 40)

@store2.employees.create(first_name: "Charles", last_name: "Chamberlain", hourly_rate: 70)
@store2.employees.create(first_name: "Aska", last_name: "Brown", hourly_rate: 60)
@store2.employees.create(first_name: "Charlie", last_name: "Clad", hourly_rate: 40)
@store2.employees.create(first_name: "Donny", last_name: "Franklin", hourly_rate: 40)
@store2.employees.create(first_name: "Ella", last_name: "Washer", hourly_rate: 40)
p Employee.count
