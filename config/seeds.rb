# don't forget to load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"
require_relative "../models/Apartment.rb"
require_relative "../models/Tenant.rb"
require_relative "db.rb"

Tenant.destroy_all
Apartment.destroy_all
# create at least 3 objects of the apartment class
Apartment.create(address: "705 G Street", monthly_rent: 1000, sqft: 700, num_beds: 3, num_baths: 2)
Apartment.create(address: "123 Main Street", monthly_rent: 900, sqft: 500, num_beds: 1, num_baths: 1)
Apartment.create(address: "456 A Street", monthly_rent: 1500, sqft: 800, num_beds: 3, num_baths: 2)
Apartment.create(address: "789 P Street", monthly_rent: 999, sqft: 600, num_beds: 2, num_baths: 2)
# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Melissa Steffan", age: 24, gender: "f", apartment_id: 2)
Tenant.create(name: "Patrick DePuydt", age: 28, gender: "m", apartment_id: 2)
Tenant.create(name: "Rose Myers", age: 25, gender: "f", apartment_id: 1)
Tenant.create(name: "Paige Burton", age: 25, gender: "f", apartment_id: 1)
Tenant.create(name: "Emily Pasi", age: 25, gender: "f", apartment_id: 1)
Tenant.create(name: "Morgan Burres", age: 24, gender: "f", apartment_id: 3)
Tenant.create(name: "Nathan Burres", age: 24, gender: "m", apartment_id: 3)
Tenant.create(name: "Hannah Tuke", age: 25, gender: "f", apartment_id: 4)
Tenant.create(name: "Colin Francis", age: 22, gender: "m")
Tenant.create(name: "Whitney Giaimo", age: 24, gender: "f")
Tenant.create(name: "Harrison Dietzman", age: 30, gender: "m")

binding.pry
# query for all objects of the Tenant class, store it in a variable
all_Tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
apartment_1 = Apartment.find_by(address: "705 G Street")
apartment_1.address = "704 G Street"

# save that object you just updated to the landlord database
apartment_1.save

# update an object using the update method
Tenant.last.update(apartment_id: 4)

# delete an object
Tenant.last.delete
