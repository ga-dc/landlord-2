# don't forget to load dependencies!
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../models/apartment"
require_relative "../models/tenant"
require_relative "db"

#require_relative "setup.rb"
# create at least 3 objects of the apartment class
Apartment.destroy_all
Tenant.destroy_all

lakeside = Apartment.create(address: "123 lakeside dr", monthly_rent: 4000, sqft: 1000, num_beds: 5, num_baths: 2)
manhattan = Apartment.create(address: "30 west 72nd st", monthly_rent: 500000, sqft: 3000, num_beds: 5, num_baths: 4)
ghetto = Apartment.create(address: "9137 elm st", monthly_rent: 250, sqft: 300, num_beds: 1, num_baths: 1)

# create at least 9 objects(at least 5 must belong to an apartment)
joe = Tenant.create(name:"Joe", age:30, gender:"m", apartment_id:lakeside.id)
jim = Tenant.create(name:"Jim", age:28, gender:"m", apartment_id:lakeside.id)
john = Tenant.create(name:"John", age:29, gender:"m", apartment_id:lakeside.id)
jack = Tenant.create(name:"Jack", age:45, gender:"m", apartment_id:manhattan.id)
jake = Tenant.create(name:"Jake", age:23, gender:"m", apartment_id:ghetto.id)
jeff = Tenant.create(name:"Jeff", age:27, gender:"m", apartment_id:lakeside.id)
jeb = Tenant.create(name:"Jeb", age:34, gender:"m", apartment_id:manhattan.id)
jay = Tenant.create(name:"Jay", age:33, gender:"m", apartment_id:lakeside.id)
josh = Tenant.create(name:"Josh", age:20, gender:"m", apartment_id:manhattan.id)

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all;

# query for all instances of the Tenant class that belong to the first Apartment you created
lakeside.tenants;


# update any one of your objects you've created using attribute helper methods
#joe had a birthday
joe.age = 31;

# save that object you just updated to the database
joe.save;

# update an object using the update method
#josh ran his business into the ground
josh.update(apartment_id: ghetto.id)

# delete an object
jeff.destroy;

puts "seeding complete"
