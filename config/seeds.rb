# don't forget to load dependencies!

# create at least 3 objects of the apartment class
alpha = Apartment.create(address: "123 Main Street", monthly_rent: 1200, sqft: 750, num_beds: 4, num_baths: 1)
beta = Apartment.create(address: "1600 Pennsylvania Avenue", monthly_rent: 1600, sqft: 5000, num_beds: 4, num_baths: 4)
gamma = Apartment.create(address: "21 Jump Street", monthly_rent: 2100, sqft: 900, num_beds: 3, num_baths: 2)
# create at least 9 objects(at least 5 must be long to an apartment)
alvin = Tenant.create(name: "Alvin Chipmunk", age: 17, gender: "M", apartment: gamma)
simon = Tenant.create(name: "Simon Chipmunk", age: 19, gender: "M", apartment: gamma)
theo = Tenant.create(name: "Theodore Chipmunk", age: 15, gender: "M", apartment: gamma)
dave = Tenant.create(name: "Dave Seville", age: 30, gender: "M")
blanche = Tenant.create(name: "Blanche Devereaux", age: 58, gender: "F", apartment: alpha)
rose = Tenant.create(name: "Rose Nylund", age: 62, gender: "F")
dorothy = Tenant.create(name: "Dorothy Zbornak", age: 67, gender: "F")
sophia = Tenant.create(name: "Sophia Petrillo", age: 89, gender: "F")
barack = Tenant.create(name: "Barack Obama", age: 53, gender: "M", apartment_id: beta.id)
michelle = Tenant.create(name: "Michelle Obama", age: 49, gender: "F", apartment_id: beta.id)

# query for all objects of the Tenant class, store it in a variable
tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find(1)
# update any one of your objects you've created using attribute helper methods
beta.num_beds = 7
# save that object you just updated to the database
beta.save
# update an object using the update method
rose.update(apartment: alpha)
# delete an object
dave.destroy
