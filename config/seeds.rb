# don't forget to load dependencies!
require 'active_record'
require 'pry'

require_relative '../models/apartment'
require_relative '../models/tenant'
require_relative '../config/db.rb'
# create at least 3 objects of the apartment class
thirteen = Apartment.create(address: "1313 13th St", monthly_rent: 3000, sqft: 550, num_beds: 2, num_baths: 2)
battery = Apartment.create(address: "2014 Battery Ln", monthly_rent: 2700, sqft: 350, num_beds: 3, num_baths: 2)
risque = Apartment.create(address: "6969 Risque Pl", monthly_rent: 5000, sqft: 1050, num_beds: 5, num_baths: 3)
# create at least 9 objects(at least 5 must be long to an apartment)
thirteen.tenants.create(name: "Tony Stark", age: 35, gender: "m")
thirteen.tenants.create(name: "Pepper Pots", age: 32, gender: "f")
battery.tenants.create(name: "Hawkeye", age: 28, gender: "m")
battery.tenants.create(name: "Natasha Romanov", age: 30, gender: "f")
battery.tenants.create(name: "Skye", age: 25, gender: "f")
risque.tenants.create(name: "Mindy Mimosa", age: 25, gender: "f")
risque.tenants.create(name: "Roxy", age: 26, gender: "f")
risque.tenants.create(name: "Poison Ivy", age: 28, gender: "f")
risque.tenants.create(name: "Harleyquin", age: 27, gender: "f")
# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
thirteen.sqft = 650
risque.num_baths = 4
# save that object you just updated to the database

# update an object using the update method
skye = Tenant.find_by(name: "Skye")
skye.update(name: "Quake")
# delete an object
Tenant.first.destroy
