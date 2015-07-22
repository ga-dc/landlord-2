# don't forget to load dependencies!

require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative '../models/apartment.rb'
require_relative '../models/tenant.rb'
require_relative '../config/db.rb'

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class

park_place = Apartment.create(address: "3453 Park St.", monthly_rent: 2000, sqft: 2500, num_beds: 3, num_bath: 2)
oak_hills = Apartment.create(address: "100 Oak Ln.", monthly_rent: 575, sqft: 405, num_beds: 1, num_bath: 1)
forest = Apartment.create(address: "25 Green St.", monthly_rent: 1025, sqft: 750, num_beds: 1, num_bath: 1)

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create(name: "Mary Smith", age: 23, gender: "f", apartment: oak_hills)
Tenant.create(name: "Bob Lee", age: 38, gender: "m", apartment: forest)
Tenant.create(name: "Kim Roberts", age: 28, gender: "f", apartment: park_place)
Tenant.create(name: "John Finley", age: 21, gender: "m", apartment: oak_hills)
Tenant.create(name: "Lary Goodman", age: 49, gender: "m", apartment: park_place)
Tenant.create(name: "Gary White", age: 37, gender: "m", apartment: forest)
Tenant.create(name: "Cindy Freeman", age: 27, gender: "f", apartment: forest)
Tenant.create(name: "Hilary Shoe", age: 41, gender: "f", apartment: park_place)
Tenant.create(name: "Barry Brown", age: 30, gender: "m", apartment: forest)

# query for all objects of the Tenant class, store it in a variable

all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created

park_place.tenents

# update any one of your objects you've created using attribute helper methods

park_place.sqft = 1575

# save that object you just updated to the database

park_place.save

# update an object using the update method

Tenant.last.update(age: 40)

# delete an object

Tenant.destroy_all
