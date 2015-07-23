# don't forget to load dependencies!
require "sinatra"
require "sinatra/reloader"
require "bundler/setup"
require "pg"
require "pry"
require "active_record"

require_relative "config/db"
require_relative "models/apartment"
require_relative "models/tenant"

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class

# create at least 9 objects(at least 5 must be long to an apartment)

# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
