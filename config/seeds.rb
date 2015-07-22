# don't forget to load dependencies!
require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postrgres db library
require "active_record" # the ORM
require "pry" # for debugging
require_relative "db"
require_relative "../models/apartments"
require_relative "../models/tenants"
# clear tables every time we run this
Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
apt1 = Apartment.create(address: "123 Derp Street", monthly_rent: 1100, sq_ft: 2300, num_beds: 2, num_baths: 1)
apt2 = Apartment.create(address: "2316 17th St. NW", monthly_rent: 1000, sq_ft: 4000, num_beds: 5, num_baths: 4)
apt3 = Apartment.create(address: "456 Derpel Avenue", monthly_rent: 1500, sq_ft: 3000, num_beds: 4, num_baths: 3)
# create at least 9 objects(at least 5 must be long to an apartment)
donald = Tenant.create(name: "Donald Duck", age: 45, gender: "M", apartment: apt1)
elmer = Tenant.create(name: "Elmer Fudd", age: 57, gender: "M", apartment: apt2)
bugs = Tenant.create(name: "Bugs Bunny", age: 32, gender: "M", apartment: apt1)
daffy = Tenant.create(name: "Daffy Duck", age: 35, gender: "M", apartment: apt1)
porky = Tenant.create(name: "Porky Pig", age: 27, gender: "M", apartment: apt1)
foghorn = Tenant.create(name: "Foghorn Leghorn", age: 36, gender: "M", apartment: apt3)
wile = Tenant.create(name: "Wile E. Coyote", age: 42, gender: "M", apartment: apt3)
roadrunner = Tenant.create(name: "Road Runner", age: 22, gender: "M", apartment: apt1)
pepe = Tenant.create(name: "Pepe le Pew", age: 48, gender: "M", apartment: apt3)
# query for all objects of the Tenant class, store it in a variable
alltenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find_by(apartment_id: apt1.id)
# update any one of your objects you've created using attribute helper methods
apt1.monthly_rent = 1200
# save that object you just updated to the database
apt1.save
# update an object using the update method
pepe.update(gender: "creep")
# delete an object
roadrunner.destroy
