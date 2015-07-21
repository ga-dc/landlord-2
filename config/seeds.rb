# don't forget to load dependencies!
require 'active_record'
require 'pry'

require_relative '../models/apartment'
require_relative '../models/tenant'
require_relative '../config/db.rb'

# create at least 3 objects of the apartment class
archer.apartment.create(monthly_rent: 1200, sqft: 720, num_beds: 2 num_baths: 1)
bristol.apartment.create(monthly_rent: 1600, sqft: 695, num_beds: 1 num_baths: 1)
brier.apartment.create(monthly_rent: 1650, sqft: 900, num_beds: 2 num_baths: 2)

# create at least 9 objects(at least 5 must be long to an apartment)
chris = tenant.create(name: "Chris", age: 24, gender: "m" apartment_id: archer.id )
kim = tenant.create(name: "kim", age: 66, gender: "f" apartment_id: archer.id)
brittany = tenant.create(name: "brittany", age: 28, gender: "f" apartment_id: bristol.id)
marc = tenant.create(name: "marc", age: 42, gender: "m" apartment_id: bristol.id)
keith = tenant.create(name: "keith", age: 40, gender: "m" apartment_id: bristol.id)
kyle = tenant.create(name: "kye", age: 43, gender: "m")
lisa = tenant.create(name: "lisa", age: 38, gender: "f")
nadia = tenant.create(name: "nadia", age: 32, gender: "f")
kirk = tenant.create(name: "kirk", age: 33, gender: "m")

# query for all objects of the Tenant class, store it in a variable
Tenants.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Tentants.find(archer)

# update any one of your objects you've created using attribute helper methods
brier.update(sprinkler: "yes")

# save that object you just updated to the database


# update an object using the update method

# delete an object
