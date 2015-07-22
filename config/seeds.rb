# don't forget to load dependencies!
require "active_record"
require "pry"

require_relative ".../models/apartment.rb"
require_relative ".../models/tenant.rb"
require_relative ".../config/db.rb"

# create at least 3 objects of the apartment class

Apartment.create(address: "The Griffin", monthly_rent: 900, sqft: 1000, num_beds: 1, num_baths: 1)
Apartment.create(address: "The White House", monthly_rent: 1000000, sqft: 10000, num_beds: 12, num_baths: 20)
Apartment.create(address: "The SnootyPatootie", monthly_rent: 8000, sqft: 5000, num_beds: 5, num_baths: 8)

# create at least 9 objects(at least 5 must be long to an apartment)
joey = tenant.create(name: "Joey", age: 20, gender: "M")
boogers = tenant.create(name: "Boogers", age: 25, gender: "F")
duke = tenant.create(name: "Duke", age: 30, gender: "M")
joe = tenant.create(name: "Joe", age: 20, gender: "M")
booger = tenant.create(name: "Booger", age: 25, gender: "F")
dukenukem = tenant.create(name: "Duke Nukem", age: 30, gender: "M")
whiskers = tenant.create(name: "Whiskers", age: 20, gender: "M")
mittens = tenant.create(name: "Mittens", age: 25, gender: "F")
felix = tenant.create(name: "Felix", age: 30, gender: "M")

# query for all objects of the Tenant class, store it in a variable
total_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
felix.update(age: 25)

# save that object you just updated to the database
felix.save

# update an object using the update method
Tenant.last.update(age: 92)

# delete an object
Tenant.first.destroy
