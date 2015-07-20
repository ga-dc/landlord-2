# don't forget to load dependencies!
require 'active_record'
require 'pry'

require_relative '../models/apartment'
require_relative '../models/tenant'
require_relative '../config/db.rb'

Apartment.destroy_all
Person.destroy_all
# create at least 3 objects of the apartment class
Apartment.create([
  {address: "1234 1st St", monthly_rent: 800,  sqft: 1100, num_beds: 1, num_baths: 1}
  {address: "2341 2nd St", monthly_rent: 900,  sqft: 1200, num_beds: 2, num_baths: 2}
  {address: "3412 3rd St", monthly_rent: 1000,  sqft: 1300, num_beds: 3, num_baths: 3}
  ])
# create at least 9 objects(at least 5 must be long to an apartment)
Apartment.first.persons.create([
  {}
  ])
# query for all objects of the Person class, store it in a variable

# query for all instances of the Person class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
