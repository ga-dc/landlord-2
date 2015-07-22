# don't forget to load dependencies!
require 'bundler/setup'
require "pg"
require "active_record"
require "pry"
require_relative "../config/db"
require_relative "../models/apartment"
require_relative "../models/tenant"

# create at least 3 objects of the apartment class

studio = Apartment.create(address: "1000 Penn Ave", monthly_rent: 900, sqft: 1 , num_beds:0, num_baths: 1)
1_bedroom = Apartment.create(address: "1000 Penn Ave", monthly_rent: 1300, sqft: 2, num_beds: 1, num_baths:1.5 )
2_bedroom = Apartment.create(address: "1000 Penn Ave", monthly_rent: 1700, sqft: 3, num_beds: 2, num_baths:2.5 )

# create at least 9 objects(at least 5 must be long to an apartment)

tenant_1 = Tenant.create(first_name: "Josh", last_name: "Jones", age: 40, gender:"m", apartment_id: studio.id)
tenant_2 = Tenant.create(first_name: "Marc", last_name: "Jones", age: 30, gender:"m", apartment_id: 2_bedroom.id)
tenant_3 = Tenant.create(first_name: "Kelly", last_name: "Jones", age: 28, gender:"f", apartment_id: 1_bedroom.id)
tenant_4 = Tenant.create(first_name: "Don", last_name: "Jones", age: 55, gender:"m", apartment_id: studio.id.id)
tenant_5 = Tenant.create(first_name: "Danielle", last_name: "Jones", age: 33, gender:"f", apartment_id: 2_bedroom.id)
tenant_6 = Tenant.create(first_name: "Brian", last_name: "Jones", age: 46, gender:"m", apartment_id: 1_bedroom.id)
tenant_7 = Tenant.create(first_name: "Eddie", last_name: "Jones", age: 50, gender:"m", apartment_id: 1_bedroom.id)
tenant_8 = Tenant.create(first_name: "Andrian", last_name: "Jones", age: 22, gender:"m", apartment_id: studio.id)
tenant_9 = Tenant.create(first_name: "Nicole", last_name: "Jones", age: 38, gender:"f", apartment_id: 1_bedroom.id)

# query for all objects of the Tenant class, store it in a variable


# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
