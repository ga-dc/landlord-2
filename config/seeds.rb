# CREATE TABLE tenants(
#   id SERIAL PRIMARY KEY,
#   name TEXT,
#   age INT,
#   gender TEXT,
#   apartment_id INT
# );
#
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../models/Apartment"
require_relative "../models/Tenant"
require_relative "db.rb"

# don't forget to load dependencies!
Tenant.destroy_all
Apartment.destroy_all

# create at least 3 objects of the apartment class

lexington = Apartment.create(address: "123 H st NW", monthly_rent: 2000, sqft: 500, num_beds: 2, num_baths: 2);
tuscany = Apartment.create(address: "666 S st SE", monthly_rent: 6000, sqft: 900, num_beds: 4, num_baths: 3);
heights = Apartment.create(address: "456 F st NE", monthly_rent: 1550, sqft: 450, num_beds: 1, num_baths: 1);


# create at least 9 objects(at least 5 must belong to an apartment)
bob = Tenant.create(name: "Bob", age: 35, gender: "male");
jane = Tenant.create(name: "Jane", age: 27, gender: "female");
jack = Tenant.create(name: "Jack", age: 85, gender: "male");
sara = Tenant.create(name: "Sara", age: 93, gender: "female");
lexington.tenants.create(name: "Toto", age: 1, gender: "female")
lexington.tenants.create(name: "Harry", age: 203, gender: "male")
tuscany.tenants.create(name: "Margret", age: 22, gender: "female")
tuscany.tenants.create(name: "George", age: 66, gender: "male")
heights.tenants.create(name: "Steve", age: 99, gender: "male")
# Apartment.all[1].tenants.create(name: "Toto", age: 1, gender: "female")
# Apartment.all[1].tenants.create(name: "Harry", age: 203, gender: "male")
# Apartment.all[2].tenants.create(name: "Margret", age: 22, gender: "female")
# Apartment.all[2].tenants.create(name: "George", age: 66, gender: "male")
# Apartment.all[3].tenants.create(name: "Steve", age: 99, gender: "male")
# query for all objects of the Tenant class, store it in a variable
puts Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
jack.age=999

# save that object you just updated to the database
jack.save
# update an object using the update method
jane.update(age:99, gender:"male")
# delete an object
Tenant.all[9].destroy
binding.pry
