# don't forget to load dependencies!
require "pg"
require "active_record"
require "pry"

require_relative "../models/apartment.rb"
require_relative "../models/tenant.rb"
require_relative "../config/db.rb"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
Apartment.create([{address: "2020 F Street", monthly_rent: 1600, sqft: 600, num_beds: 1, num_baths: 1},
{address: "927 N Calvert Street", monthly_rent: 1200, sqft: 800, num_beds: 2, num_baths: 2},
{address: "2 Jonathans Path", monthly_rent: 900, sqft: 1100, num_beds: 3, num_baths: 2}])

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create([{name: "Nayana", age: 27, gender: "female", apartment_id: 1}, {name: "Gwen", age: 25, gender: "female", apartment_id: 1},
{name: "Andy", age: 25, gender: "male", apartment_id: 2}, {name: "Matt", age: 32, gender: "male", apartment_id: 3},
{name: "Ariel", age: 24, gender: "female", apartment_id: 2}, {name: "Mikayla", age: 25, gender: "female"},
{name: "Adam", age: 28, gender: "male"}, {name: "Bryant", age: 27, gender: "male"},
{name: "Rhea", age: 26, gender: "female"}])


# query for all objects of the Tenant class, store it in a variable

all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find_by(apartment_id:1)
# update any one of your objects you've created using attribute helper methods

rhea = tenant.last
rhea.age = 27
# save that object you just updated to the database

rhea.save

# update an object using the update method
nayana_apartment = Apartment.find_by(address: "2020 F Street")
nayana_apartment.update(monthly_rent: 1500)

# delete an object

matt = Tenant.find_by(age:32)
matt.destroy
