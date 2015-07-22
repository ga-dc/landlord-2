# don't forget to load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../models/apartment"
require_relative "../models/tenant"
require_relative "db"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
Apartment.create(address: "345 Main St", monthly_rent: 850, sqft: 550, num_beds: 1, num_baths: 1)
Apartment.create(address: "1982 Park Ave", monthly_rent: 2000, sqft: 1200, num_beds: 2, num_baths: 2)
Apartment.create(address: "785 Broad St", monthly_rent: 1000, sqft: 800, num_beds: 2, num_baths: 1)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Bob", age: 22, gender: "m", apartment_id: Apartments.all[1].id)
Tenant.create(name: "Alan", age: 48, gender: "m", apartment_id: Apartments.all[0].id)
Tenant.create(name: "Susan", age: 45, gender: "f", apartment_id: Apartments.all[0].id)
Tenant.create(name: "Tom", age: 33, gender: "m", apartment_id: Apartments.all[2].id)
Tenant.create(name: "John", age:25, gender: "m", apartment_id: Apartments.all[2].id)
Tenant.create(name: "Beth", age: 26, gender: "f", apartment_id: Apartments.all[1].id)
Tenant.create(name: "Alison", age: 22, gender: "f")
Tenant.create(name: "Dave", age: 42, gender: "m")
Tenant.create(name: "Paul", age: 32, gender: "m")

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenants.all

# query for all instances of the Tenant class that belong to the first Apartment you created
all_tenants.where(apartment_id: Apartment.first)

# update any one of your objects you've created using attribute helper methods
paul = Tenant.find_by(name: "Paul")
paul.age = 33

# save that object you just updated to the database
paul.save

# update an object using the update method
bob = Tenant.find_by(name: "Bob")
bob.update(name: "Bob Belcher", age: 44)

# delete an object
beth = Tenant.find_by(name: "Beth")
beth.destroy

binding.pry
