require_relative "setup"

# create at least 3 objects of the apartment class
Apartment.create(address:"1916 15th St NW", monthly_rent: 4400, sqft: 950, num_beds: 4, num_baths: 2)
Apartment.create(address:"3142 O St NW", monthly_rent: 3800, sqft: 550, num_beds: 3, num_baths: 1)
Apartment.create(address:"2500 M St NW", monthly_rent: 5200, sqft: 1500, num_beds: 3, num_baths: 3)
# create at least 9 objects(at least 5 must belong to an apartment)
Tenant.create(name:"Marcus Paige", age: 21, gender: "Male", apartment: Apartment.find_by(address: "1916 15th St NW"))
Tenant.create(name:"Brice Johnson", age: 21, gender: "Male", apartment: Apartment.find_by(address: "1916 15th St NW"))
Tenant.create(name:"Justin Jackson", age: 21, gender: "Male", apartment: Apartment.find_by(address: "1916 15th St NW"))
Tenant.create(name:"Alex Morgan", age: 25, gender: "Female", apartment: Apartment.find_by(address: "3142 O St NW")
Tenant.create(name:"Abby Wambach", age: 32, gender: "Female", apartment: Apartment.find_by(address: "3142 O St NW")
Tenant.create(name:"Carly Lloyd", age: 27, gender: "Female", apartment: Apartment.find_by(address: "3142 O St NW")
Tenant.create(name:"Bruce Wayne", age: 40, gender: "Male", apartment: Apartment.find_by(address: "2500 M St NW")
Tenant.create(name:"Clark Kent", age: 34, gender: "Male", apartment: Apartment.find_by(address: "2500 M St NW")
Tenant.create(name:"Peter Parker", age: 23, gender: "Male", apartment: Apartment.find_by(address: "2500 M St NW")
# # query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
