# don't forget to load dependencies!
require_relative "setup"

# prevent re-seeding
Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
Apartment.create([
  {address: "123 Philly Ave", monthly_rent: 1200, sqft: 2500, num_beds: 3, num_baths: 2},
  {address: "1133 15th St", monthly_rent: 60000, sqft: 3100, num_beds: 5, num_baths: 4},
  {address: "1776 Independence Blvd", monthly_rent: 3000, sqft: 3500, num_beds: 2, num_baths: 3}
  ])
 paddys = Apartment.first
 ga = Apartment.find_by(address: "1133 15th St")
 rev = Apartment.last
# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create([
  {name: "Charlie Kelly", age: 30, gender: "M", apartment_id: paddys.id},
  {name: "Dennis Reynolds", age: 31, gender: "M", apartment_id: paddys.id},
  {name: "Ronald MacDonald", age: 32, gender: "M", apartment_id: paddys.id},
  {name: "Jon Snow", age: 23, gender: "M", apartment_id: ga.id },
  {name: "Beyonce", age: 30, gender: "F", apartment_id: ga.id },
  {name: "Jennifer Lawrence", age: 25, gender: "F", apartment_id: ga.id },
  {name: "Taylor Swift", age: 26, gender: "F", apartment_id: ga.id },
  {name: "Kendrick Lamar", age: 25, gender: "M", apartment_id: ga.id },
  {name: "Thomas Jefferson", age: 39, gender: "M", apartment_id: rev.id },
  {name: "George Washington", age: 41, gender: "M", apartment_id: rev.id }
  ])
# query for all objects of the Tenant class, store it in a variable
  people = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
  gang = Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
  kendrick = Tenant.find_by(name: "Kendrick Lamar")
  kendrick.age = "26"
# save that object you just updated to the database
  kendrick.save
# update an object using the update method
  Apartment.last.update(num_beds: 3)
# delete an object
  Tenant.find_by(name: "Jon Snow").destroy

# binding.pry

puts "Database has been seeded \n"
