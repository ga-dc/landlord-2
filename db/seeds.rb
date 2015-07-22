# don't forget to load dependencies!
require "pg"
require "active_record"
require "pry"
require_relative "../models/tenant.rb"
require_relative "../models/apartment.rb"
require_relative "../db/config.rb"

# create at least 3 objects of the apartment class
Apartment.create(
{address:"234 Doom Street",monthly_rent: 2324,sqft:344,num_beds:3,num_baths:3},
{address:"666 Abomination Way",monthly_rent:2342,sqft:540,num_beds:3,num_baths:4},
{address:"123 Elm Street",monthly_rent:5463,sqft:244,num_beds:4,num_baths:6}
)

# create at least 9 objects(at least 5 must be long to an apartment)

# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
