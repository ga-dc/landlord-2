# don't forget to load dependencies!
require 'bundler/setup'
require "pg"
require "active_record"
require "pry"

require_relative "models/apartment.rb"
require_relative "models/tenant.rb"

Tenants.destroy_all
Apartments.destroy_all

# create at least 3 objects of the apartment class
Apartment.create(id: "0001", address: "1234 Main St.", monthly_rent: 1300, sq_ft: 550, num_beds: 0, num_baths: 1)

# create at least 9 objects(at least 5 must be long to an apartment)

# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
