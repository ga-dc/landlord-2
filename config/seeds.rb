# don't forget to load dependencies!
require "pg"
require "active_record"
require "pry"

require_relative "../models/tenant"
require_relative "../models/apartment"
require_relative "../config/db"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
may = Apartment.create(address: "80 May St., Rochester, NY 14620", monthly_rent: 590, sqft: 1000, num_beds: 4, num_baths: 1)
oct = Apartment.create(address: "3201 Octavia St., San Francisco, CA 94123", monthly_rent: 850, sqft: 500, num_beds: 1, num_baths: 1)
bri = Apartment.create(address: "220 Briarcliff Rd., DeWitt, NY 13214", monthly_rent: 1, sqft: 700, num_beds: 4, num_baths: 2)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Mike McMahon", age: 51, gender: "m", apartment_id: oct.id)
Tenant.create(name: "Chris Rouin", age: 51, gender: "m", apartment_id: may.id)
Tenant.create(name: "Phil Rouin", age: 53, gender: "m", apartment_id: may.id)
Tenant.create(name: "Rose Salloum", age: 52, gender: "f", apartment_id: bri.id)
Tenant.create(name: "Fred Salloum", age: 55, gender: "m", apartment_id: bri.id)
Tenant.create(name: "George Salloum", age: 58, gender: "m", apartment_id: bri.id)
Tenant.create(name: "Paul Westerberg", age: 56, gender: "m")
Tenant.create(name: "Bob Stinson", age: 55, gender: "m")
Tenant.create(name: "Chris Mars", age: 54, gender: "m")

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find_by(apartment_id: may.id)

# update any one of your objects you've created using attribute helper methods
paul = Tenant.find_by(name: "Paul Westerberg")
paul.update(apartment_id: oct.id)

# save that object you just updated to the database
paul.save

# update an object using the update method
paul.update(age: 55)

# delete an object
bob = Tenant.find_by(name: "Bob Stinson")
bob.destroy

binding.pry
