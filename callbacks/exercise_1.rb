require_relative '../setup'
require_relative '../exercises/exercise_6'
require 'pp'

new_employee = @store1.employees.create(first_name: "Bobby", last_name: "Brownie", hourly_rate: 70)
pp new_employee

