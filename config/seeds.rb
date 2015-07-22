require "pg"
require "active_record"
require "pry"

require_relative "../models/tenant"
require_relative "../models/apartment"
require_relative "../config/db.rb"

Apartment.destroy_all
Tenant.destroy_all

charter_oak = Apartment.create(address: "416 Elm St.", monthly_rent: "$200", sqft: 2400, num_beds: 2, num_baths:1)
baker_st = Apartment.create(address: "221 B", monthly_rent: "$1000", sqft: 1200, num_beds: 3, num_baths:1)

Tenant.create(name: "Peter", age: 52, gender: "m")
Tenant.create(name: "Paul", age: 23, gender: "m")
Tenant.create(name: "Mathew", age: 32, gender: "m")
Tenant.create(name: "James", age: 46, gender: "m", apartment_id: charter_oak.id)
Tenant.create(name: "John", age: 18, gender: "m", apartment_id: charter_oak.id)
Tenant.create(name: "Philip", age: 60, gender: "m", apartment_id: baker_st.id)
Tenant.create(name: "Simon", age: 22, gender: "m", apartment_id: baker_st.id)
Tenant.create(name: "Andrew", age: 35, gender: "m", apartment_id: baker_st.id)

# queries for all instances of the Tenant class and stores it in a variable of your choice
# all_tenants = Tenant.all

# queries for all instances of the Tenant class that belong to one of the Apartments you created and stories it in a variable of your choosing.
# oaks = Tenant.where(apartment_id: charter_oak.id)

# Updates attributes using attribute helper methods for one of the objects you've created
# paul = Tenant.find_by(name: "Paul")
# paul.update(apartment_id: baker_st.id)

# Saves an object that you updated using attribute helpers to the Database
# paul.save

# Updates an object using the update methods
# simon.update(age: 55)

# Deletes one of the objects youve created
# philip = Tenant.find_by(name: "Philip")
# philip.destroy

binding.pry
