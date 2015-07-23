require_relative 'setup'

Apartment.destroy_all
Tenant.destroy_all

deerfield = Apartment.create(address: "8716 Selger Drive", monthly_rent: "$3500", sqft: 2400, num_beds: 6, num_baths: 2)
rivermont = Apartment.create(address: "2306 Rivermont Ave", monthly_rent: "$1500", sqft: 2000, num_beds: 4, num_baths: 3)
randolph = Apartment.create(address: "2500 Rivermont Ave", monthly_rent: "$500", sqft: 144, num_beds: 2, num_baths: 2)


Tenant.create(last_name: "Ride", first_name: "Sally", age: 33, gender: "female", apartment: deerfield)
Tenant.create(last_name: "Gagarin", first_name: "Yuri", age: 35, gender: "male", apartment: rivermont)
Tenant.create(last_name: "Glenn", first_name: "John", age: 31, gender: "male", apartment: randolph)
Tenant.create(last_name: "Armstrong", first_name: "Neil", age: 44, gender: "male", apartment: randolph)
Tenant.create(last_name: "Sheppard", first_name: "Alan", age: 45, gender: "male", apartment: deerfield)
Tenant.create(last_name: "Aldrin", first_name: "Hadfield", age: 37, gender: "male", apartment: deerfield)
Tenant.create(last_name: "Hatfield", first_name: "Chris", age: 42, gender: "male")
Tenant.create(last_name: "Lightyear", first_name: "Buzz", age: 22, gender: "male")
Tenant.create(last_name: "Lovell", first_name: "Jim", age: 51, gender: "male")

# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
