# don't forget to load dependencies!
require "pg"
require "active_record"
require "pry"

require_relative "db.rb"
require_relative "../models/tenant"
require_relative "../models/apartment"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
one = Apartment.create(address: "1111 Main St", monthly_rent: 5000, sqft: 3000, num_beds: 4, num_baths: 3)
two = Apartment.create(address: "2222 Main St", monthly_rent: 1800, sqft: 710, num_beds: 2, num_baths: 1)
three = Apartment.create(address: "3333 Main St", monthly_rent: 1500, sqft: 510, num_beds: 1, num_baths: 1)
# create at least 9 objects(at least 5 must belong to an apartment)
Tenant.create(name: "A", age: 50, gender: "m", apartment_id: one.id)
Tenant.create(name: "B", age: 45, gender: "f", apartment_id: one.id)
Tenant.create(name: "C", age: 20, gender: "m", apartment_id: one.id)
Tenant.create(name: "D", age: 19, gender: "m", apartment_id: one.id)
Tenant.create(name: "E", age: 15, gender: "f", apartment_id: one.id)
Tenant.create(name: "F", age: 30, gender: "f", apartment_id: two.id)
Tenant.create(name: "G", age: 35, gender: "m", apartment_id: two.id)
Tenant.create(name: "H", age: 10, gender: "m", apartment_id: two.id)
Tenant.create(name: "I", age: 30, gender: "m", apartment_id: three.id)
# query for all objects of the Tenant class, store it in a variable
all_tenant = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
three = Apartment.find_by(sqft: 510)
three.update(monthly_rent: 1600)
# save that object you just updated to the database
three.save
# update an object using the update method
Apartment.last.update(monthly_rent: 1600)
# delete an object
three.destroy
