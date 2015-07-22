# don't forget to load dependencies!
require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# destroys existing data in database

# create at least 3 objects of the apartment class
Apartment.create([
  {address: "1518 West Cary Street", monthly_rent: 1240,  sqft: 300, num_beds: 2, num_baths: 1},
  {address: "3001 Park Center Drive", monthly_rent: 1460,  sqft: 850, num_beds: 1, num_baths: 1},
  {address: "120 Thompson Street", monthly_rent: 2300,  sqft: 270, num_beds: 0, num_baths: 1}
  ])

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create([
  {name: "Erica", age: 24, gender: "F"},
  {name: "Dave", age: 32, gender: "M"},
  {name: "Hannah", age: 25, gender: "F"},
  {name: "Alex", age: 24, gender: "M"}
  ])

Apartment.all[0].tenants.create([
  {name: "Kassidy", age: 23, gender: "F"},
  {name: "Kathlynn", age: 24, gender: "F"}
  ])

Apartment.all[1].tenants.create(name: "Liz", age: 30, gender: "F")

Apartment.all[2].tenants.create(name: "Rob", age: 32, gender: "M")

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
kassidy = Tenant.find_by(name: "Kassidy")
kassidy.age = 30

# save that object you just updated to the database
kassidy.save

# update an object using the update method
edit_apartment = Apartment.find_by(name: "3001 Park Center Drive")
edit_apartment.update = (monthly_rent: 1400)

# delete an object
kathlynn = Tenant.find_by(name: "Kathlynn")
kathlynn.destroy
