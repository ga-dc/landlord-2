# don't forget to load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "db"
require_relative "../models/apartment"
require_relative "../models/tenant"


Tenant.destroy_all
Apartment.destroy_all

# create at least 3 objects of the apartment class

beverly = Apartment.create(address:"90210",monthly_rent:5000,sqft:500,num_beds:2,num_baths:2)
melrose = Apartment.create(address:"melrose place",monthly_rent:100,sqft:3000,num_beds:1,num_baths:1)
peach = Apartment.create(address:"peach pit",monthly_rent:1000,sqft:1000,num_beds:0,num_baths:3)

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create(name:"dylan",age:16,gender:"male",apartment: beverly)
Tenant.create(name:"brenda",age:17,gender:"female",apartment: beverly)
Tenant.create(name:"rose",age:25,gender:"female",apartment: melrose)
Tenant.create(name:"zack",age:16,gender:"male",apartment: peach)
Tenant.create(name:"kelly",age:18,gender:"female",apartment: peach)
Tenant.create(name:"slater",age:33,gender:"male",apartment: melrose)
Tenant.create(name:"screech",age:17,gender:"male",apartment: peach)
Tenant.create(name:"lisa",age:16,gender:"female",apartment: beverly)
Tenant.create(name:"bobby",age:16,gender:"male",apartment: melrose)


# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
