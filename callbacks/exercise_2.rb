require_relative '../setup'
require_relative '../exercises/exercise_6'
require 'pp'

# Make sure non-empty stores cannot be destroyed

@store1 = Store.find(1)
if @store1.destroy
  puts "Store destroyed! It has #{@store1.employees.size} =/"
else
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true, womens_apparel: false)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end

