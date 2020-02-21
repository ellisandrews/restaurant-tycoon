require_relative 'restaurant'
require_relative 'location'
require_relative 'employee'

# Create a couple of restaurants
puts "\nCreating some restaurants..."
wendys = Restaurant.new("Wendy's")
mcdonalds = Restaurant.new("McDonald's")

# Check Restaurant.all (in readable form)
puts "\nCHECK: Restaurant.all => #{Restaurant.all.map {|restaurant| restaurant.to_s}}"

# Create some locations for each restaurant (Restaurant#create_location)
puts "\nCreating some locations..."
wendys.create_location("Address 1", 2000)
wendys.create_location("Address 2", 3000)
wendys.create_location("Address 3", 4000)
mcdonalds.create_location("Address 4", 1500)
mcdonalds.create_location("Address 5", 2500)
mcdonalds.create_location("Address 6", 3500)

# Check Location.all using length
puts "\nCHECK: Location.all.length => #{Location.all.length}"

# Check Restaurant#locations
puts "\nCHECK: Restaurant#locations"
puts "\twendys.locations.length => #{wendys.locations.length}"
puts "\twendys.locations[0] => #{wendys.locations[0]}"
puts "\n\tmcdonalds.locations.length => #{mcdonalds.locations.length}"
puts "\tmcdonalds.locations[0] => #{mcdonalds.locations[0]}"

# Check Restaurant#total_rent
puts "\nCHECK Restaurant#total_rent"
puts "\twendys.total_rent => #{wendys.total_rent}"
puts "\tmcdonalds.total_rent => #{mcdonalds.total_rent}"

# Check Location.all_addresses
puts "\nCHECK Location.all_addresses => #{Location.all_addresses}"

# Create some employees for a location for each restaurant (Location#hire_employee)
puts "\nHiring some employees..."
wendys.locations[0].hire_employee("Employee 1", 15)
mcdonalds.locations[0].hire_employee("Employee 2", 20)
mcdonalds.locations[1].hire_employee("Employee 3", 10)

# Check Employee.all (in readable from)
puts "\nCHECK Employee.all => #{Employee.all.map {|employee| employee.to_s}}"

# Check Employee.average_pay
puts "\nCHECK Employee.average_pay => #{Employee.average_pay}"

# Check Restaurant#employees (in readable form)
puts "\nCHECK Restaurant#employees"
puts "\twendys.employess => #{wendys.employees.map {|employee| employee.to_s}}"
puts "\tmcdonalds.employess => #{mcdonalds.employees.map {|employee| employee.to_s}}"

# Check Restaurant#total_pay
puts "\nCHECK Restaurant#total_pay"
puts "\twendys.total_pay => #{wendys.total_pay}"
puts "\tmcdonalds.total_pay => #{mcdonalds.total_pay}"

# Check Restaurant#total_expenses
puts "\nCHECK Restaurant#total_expenses"
puts "\twendys.total_expenses => #{wendys.total_expenses}"
puts "\tmcdonalds.total_expenses => #{mcdonalds.total_expenses}"
