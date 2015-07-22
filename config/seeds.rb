# don't forget to load dependencies!
require "active_record"
require "pry"

require_relative "../models/apartment"
require_relative "../models/tenant"
require_relative "../config/db.rb"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
first_apt = Apartment.create(address: "123 Main St.", monthly_rent: 1000, sqft: 500, num_beds: 2, num_baths: 1)
second_apt = Apartment.create(address: "123 Main St.", monthly_rent: 1000, sqft: 500, num_beds: 2, num_baths: 1)
third_apt = Apartment.create(address: "123 Main St.", monthly_rent: 1000, sqft: 500, num_beds: 2, num_baths: 1)

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create(name: "A", age: 25, gender: "F", apartment_id: first_apt.id)
Tenant.create(name: "B", age: 26, gender: "M", apartment_id: first_apt.id)
Tenant.create(name: "C", age: 27, gender: "F", apartment_id: second_apt.id)
Tenant.create(name: "D", age: 28, gender: "M", apartment_id: second_apt.id)
Tenant.create(name: "E", age: 29, gender: "F", apartment_id: third_apt.id)
Tenant.create(name: "F", age: 30, gender: "M")
Tenant.create(name: "G", age: 31, gender: "F")
Tenant.create(name: "H", age: 32, gender: "M")
Tenant.create(name: "I", age: 33, gender: "F")

# query for all objects of the Tenant class, store it in a variable
Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
Apartment.first
first_apt.sqft = 1000

# save that object you just updated to the database
first_apt.sqft = 1000
first_apt.save
Apartment.first

# update an object using the update method
Tenant.last.update(name: "II")
Tenant.last

# delete an object
Tenant.last.destroy
Tenant.last
