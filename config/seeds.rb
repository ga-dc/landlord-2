# don't forget to load dependencies!
#require_relative "setup"
require 'active_record'
require 'pry'

require_relative '../models/apartment'
require_relative '../models/tenant'
require_relative 'db'

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
apt1 = Apartment.create(address: "100 st A", monthly_rent: 500, sqft: 200, num_beds: 2, num_baths: 2)
apt2 = Apartment.create(address: "100 st B", monthly_rent: 500, sqft: 200, num_beds: 2, num_baths: 2)
apt3 = Apartment.create(address: "100 st C", monthly_rent: 500, sqft: 200, num_beds: 2, num_baths: 2)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Bill", age: 20, gender: "male", apartment: apt1)
Tenant.create(name: "Ted", age: 22, gender: "male", apartment: apt1)
Tenant.create(name: "Mike", age: 25, gender: "male", apartment: apt2)
Tenant.create(name: "Melissa", age: 20, gender: "female", apartment: apt2)
Tenant.create(name: "Katy", age: 28, gender: "female", apartment: apt3)
Tenant.create(name: "Sara", age: 30, gender: "female", apartment: apt3)
rachel = Tenant.create(name: "Rachel", age: 100, gender: "female")
max = Tenant.create(name: "Max", age: 80, gender: "male")
phil = Tenant.create(name: "Phil", age: 10, gender: "male")

# query for all objects of the Tenant class, store it in a variable
Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.where(apartment: apt1)
# update any one of your objects you've created using attribute helper methods
rachel.update(age: 101)
# save that object you just updated to the database
rachel.save
# update an object using the update method
phil.update(name: "Phillip")
# delete an object
max.destroy
