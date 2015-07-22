# don't forget to load dependencies!
require 'active_record'
require 'pry'

require_relative '../models/apartment'
require_relative '../models/tenant'
require_relative '../config/db.rb'

# create at least 3 objects of the apartment class
apartment.create ([
{address: "1756 Seminary RD Apt 314", monthly_rent: 1200, sqft: 720, num_beds: 2 num_baths: 1},
{address: "1756 Seminary RD Apt 209", monthly_rent: 1600, sqft: 695, num_beds: 1 num_baths: 1},
{address: "1756 Seminary RD Apt 1210", monthly_rent: 1650, sqft: 900, num_beds: 2 num_baths: 2}
])


# create at least 9 objects(at least 5 must be long to an apartment)
tenant.create ([
  {name: "chris", age: 24, gender: "m" apartment_id: archer.id}
  {name: "kim", age: 66, gender: "f" apartment_id: archer.id}
  {name: "brittany", age: 28, gender: "f" apartment_id: bristol.id}
  {name: "marc", age: 42, gender: "m" apartment_id: bristol.id}
  {name: "keith", age: 40, gender: "m" apartment_id: bristol.id}
  {name: "kye", age: 43, gender: "m"}
  {name: "kye", age: 43, gender: "m"}
  {name: "lisa", age: 38, gender: "f"}
  {name: "nadia", age: 32, gender: "f"}
  {name: "kirk", age: 33, gender: "m"}
  ])

# query for all objects of the Tenant class, store it in a variable
all_tenants= Tenants.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Tentants.first.tenant

# update any one of your objects you've created using attribute helper methods


# save that object you just updated to the database

chris.save
# update an object using the update method
chris.update(vacate: "yes")
# delete an object
chris.destroy
