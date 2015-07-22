# load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "models/apartment"
require_relative "models/tenant"
require_relative "config/db"

Tenant.destroy_all
Apartment.destroy_all

# create at least 3 objects of the apartment class
apartment_one = Apartment.create(address: "18800 Severn Rd", monthly_rent: 500, sqft: 1000, num_beds: 3, num_baths: 1)
apartment_two = Apartment.create(address: "500 Single St", monthly_rent: 200, sqft: 50, num_beds: 1, num_baths: 0)
apartment_three = Apartment.create(address: "214 Baby Blvd", monthly_rent: 100, sqft: 2000, num_beds: 7, num_baths: 3)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Robert",
              age: 20,
              gender: "m",
              apartment_id: Apartment.first.id)
Tenant.create(name: "Sally",
              age: 32,
              gender: "f",
              apartment_id: Apartment.first.id)
Tenant.create(name: "Walter",
              age: 29,
              gender: "m",
              apartment_id: Apartment.first.id)
Tenant.create(name: "Thompson",
              age: 49,
              gender: "m",
              apartment_id: Apartment.first.id)
Tenant.create(name: "Eragon",
              age: 28,
              gender: "m",
              apartment_id: Apartment.last.id)
Tenant.create(name: "Emily",
              age: 18,
              gender: "f",
              apartment_id: Apartment.last.id)
Tenant.create(name: "Leeson",
              age: 22,
              gender: "m",
              apartment_id: Apartment.last.id)
Tenant.create(name: "Arcee",
              age: 25,
              gender: "f",
              apartment_id: Apartment.last.id)
Tenant.create(name: "Leane",
              age: 64,
              gender: "f",
              apartment_id: Apartment.last.id)

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
first_apartment_tenants = Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
leane = Tenant.find_by(name: "Leane")
leane.age = 52

# save that object you just updated to the database
leane.save
binding.pry

# update an object using the update method
apartment_one.update(monthly_rent: 700)

# delete an object
Tenant.last.destroy
