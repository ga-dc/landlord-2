# don't forget to load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "db"
require_relative "../models/tenant"
require_relative "../models/apartment"

Tenant.destroy_all
Apartment.destroy_all

# create at least 3 objects of the apartment class
ballerApt = Apartment.create(address: "123 Awesome Street", monthly_rent: 1000000, sqft: 100000, num_beds: 10, num_baths: 9)
okApt = Apartment.create(address: "321 Whatever Street", monthly_rent: 1200, sqft: 2400, num_beds: 3, num_baths: 2)
shittyApt = Apartment.create(address: "987 Crappy Court", monthly_rent: 250, sqft: 500, num_beds: 1, num_baths: 1)
# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(first_name: "Moose", last_name: "Stafa", age: 29, gender: "male", apartment: ballerApt)
Tenant.create(first_name: "Marc", last_name: "Brownstein", age: 42, gender: "male", apartment: okApt)
Tenant.create(first_name: "Jon", last_name: "Gutwillig", age: 42, gender: "male", apartment: okApt)
Tenant.create(first_name: "Aron", last_name: "Magner", age: 41, gender: "male", apartment: okApt)
Tenant.create(first_name: "Allen", last_name: "Aucoin", age: 40, gender: "male", apartment: okApt)
Tenant.create(first_name: "Homer", last_name: "Simpson", age: 50, gender: "male", apartment: shittyApt)
Tenant.create(first_name: "January", last_name: "Jones", age: 27, gender: "female", apartment: ballerApt)
Tenant.create(first_name: "Walter", last_name: "White", age: 49, gender: "male")
Tenant.create(first_name: "Jesse", last_name: "Pinkman", age: 26, gender: "male")

# query for all objects of the Tenant class, store it in a variable
allTenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
straightBallers = Tenant.find_by(apartment_id: 1)
# update any one of your objects you've created using attribute helper methods
findTheDiscoBiscuits = Tenant.find_by(apartment_id: 2)
findTheDiscoBiscuits.apartment_id = 1
# save that object you just updated to the database
findTheDiscoBiscuits.save
# update an object using the update method
findTheDiscoBiscuits.update(apartment_id: 2)
# delete an object
homerGone = Tenant.find_by(first_name: "Homer")
homerGone.destroy 
