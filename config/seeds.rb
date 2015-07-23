# don't forget to load dependencies!
require "bundler/setup"
require "active_record"
require "pry"
require "pg"

require_relative "../models/apartment"
require_relative "../models/tenant"
require_relative "db"
# create at least 3 objects of the apartment class
richardson = Apartment.create(address: "5105 Richardson Drive", monthly_rent: 6, sqft: 120, num_beds: 30, num_baths: 2)
thugHarmony = Apartment.create(address: "2340 Thug Harmony Ave", monthly_rent: 1000, sqft: 1340, num_beds: 5, num_baths: 5)
celloLane = Apartment.create(address: "3034 Cello Lane", monthly_rent: 800, sqft: 2370, num_beds: 4, num_baths: 2)
# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name: "Long John Silver", age: 500, gender: "Male", apartment_id: richardson.id)
Tenant.create(name: "Chris Hanson", age: 50, gender: "Male", apartment_id: thugHarmony.id)
Tenant.create(name: "Kanye West", age: 40, gender: "Male", apartment_id: celloLane.id)
Tenant.create(name: "Morgan Free", age: 100, gender: "Male", apartment_id: thugHarmony.id)
Tenant.create(name: "Dynamite Johnson", age: 32, gender: "Male", apartment_id: celloLane.id)
Tenant.create(name: "Justin Bieber", age: 16, gender: "Female", apartment_id: thugHarmony.id)
Tenant.create(name: "Santa Claus", age: 3, gender: "Male", apartment_id: celloLane.id)
Tenant.create(name: "Iggy Azalea", age: 60, gender: "Female", apartment_id: richardson.id)
# query for all objects of the Tenant class, store it in a variable
allTenantClass = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.first.all.tenants
# update any one of your objects you've created using attribute helper methods
celloLane.sqft = 4056
# save that object you just updated to the database
celloLane.save
# update an object using the update method
Apartment.all.first.update(monthly_rent:900)
# delete an object
richardson.tenants.destroy_all
