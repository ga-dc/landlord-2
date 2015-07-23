# don't forget to load dependencies!
require "sinatra"
require "sinatra/reloader"
require "bundler/setup"
require "pg"
require "pry"
require "active_record"

require_relative "../config/db"
require_relative "../models/apartment"
require_relative "../models/tenant"

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
apartment1 = Apartment.create(address: "1500 L St. NW", monthly_rent: 1500, sqft: 650, num_beds:1 , num_baths: 1)
apartment2 = Apartment.create(address: "1700 1st St. NW", monthly_rent: 1800, sqft: 700, num_beds: 1, num_baths: 2)
apartment3 = Apartment.create(address: "1322 Kenyon St. NW", monthly_rent: 2200, sqft: 950, num_beds: 2, num_baths: 2)

# create at least 9 objects(at least 5 must be long to an apartment)
apartment1.tenants.create(name: "Pat", age: 32, gender: "M")
apartment2.tenants.create(name: "Lou", age: 28, gender: "M")
apartment2.tenants.create(name: "Tony", age: 25, gender: "M")
apartment3.tenants.create(name: "Joe", age: 19, gender: "M")
apartment3.tenants.create(name: "Mark", age: 31, gender: "M")
leonardo = Tenant.create(name: "Earle", age: 22, gender: "M")
donatello = Tenant.create(name: "Babe", age: 23, gender: "M")
michaelangelo = Tenant.create(name: "Bob", age: 29, gender: "M")
raphael = Tenant.create(name: "Waite", age: 33, gender: "M")
# query for all objects of the Tenant class, store it in a variable
tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
apt1_tenants = Tenant.where(apartment: "apartment1")
# update any one of your objects you've created using attribute helper methods
leonardo.gender = "Turtle"
# save that object you just updated to the database
leonardo.save
# update an object using the update method
michaelangelo.update(gender: "Turtle")
# delete an object
donatello.destroy
