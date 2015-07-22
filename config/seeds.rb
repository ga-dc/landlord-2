# don't forget to load dependencies!
require "active_record"
require "pry"

require_relative "models/tenant"
require_relative "models/tenant"
require_relative "config/db.rb"

# create at least 3 objects of the Apartment class
Apartment.create([
  {address: "158 A St NE", monthly_rent: 1455, sqft: 985, num_beds: 2, num_baths: 2},
  {address: "28 Walrus Ave", monthly_rent: 2643, sqft: 2475, num_beds: 4, num_baths: 3},
  {address: "4487 12th St", monthly_rent: 843, sqft: 509, num_beds: 1, num_baths: 1}
  ])

# create at least 9 objects(at least 5 must be long to an apartment)
Tentant.create({
  {name: "Sarah", age: 25, gender: "f", apartment_id: 0},
  {name: "Morgan", age: 26, gender: "f", apartment_id: 0},
  {name: "Lindsey", age: 26, gender: "f", apartment_id: 0},
  {name: "Walter", age: 28, gender: "m", apartment_id: 1},
  {name: "Leanne" age: 24, gender: "f", apartment_id: 1},
  {name: "Marianne", age: 57, gender: "f", apartment_id: 2},
  {name: "John", age: 59, gender: "m", apartment_id: 2},
  {name: "Matt", age: 32, gender: "m", apartment_id: 1},
  {name: "Ruth", age: 91, gender: "f", apartment_id: 2}
  })

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenants.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
a_st_aprts = Apartments.first
a_st_apts.num_beds = 3

# save that object you just updated to the database
a_st_apts.save

# update an object using the update method
Tenant.last.update(name: "Ruthie")

# delete an object
Tenant.all[2].destroy
