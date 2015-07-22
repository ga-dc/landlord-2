# don't forget to load dependencies!
require_relative "setup"
Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
moon = Apartment.create(address: "The Moon", monthly_rent: 1300, sqft: 450, num_beds: 1, num_baths: 1)
main = Apartment.create(address: "5 Main St, Unit B", monthly_rent: 4375, sqft: 928, num_beds: 2, num_baths: 2)
sesame = Apartment.create(address: "123 Sesame St, Apt 456", monthly_rent: 673, sqft: 2750, num_beds: 2, num_baths: 1)
# create at least 9 objects(at least 5 must belong to an apartment)
Tenant.create(name: "Calliope", age: "21", gender: "F", apartment: sesame)
Tenant.create(name: "Clio", age: "22", gender: "F")
Tenant.create(name: "Euterpe", age: "23", gender: "F")
Tenant.create(name: "Erato", age: "24", gender: "F", apartment: sesame)
Tenant.create(name: "Melpomene", age: "25", gender: "F", apartment: main)
Tenant.create(name: "Polyhymnia", age: "26", gender: "F")
Tenant.create(name: "Terpsichore", age: "27", gender: "F", apartment: main)
Tenant.create(name: "Thalia", age: "28", gender: "F")
Tenant.create(name: "Urania", age: "29", gender: "F", apartment: moon)
# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
moon.monthly_rent = 1400
# save that object you just updated to the database
moon.save
# update an object using the update method
Apartment.find_by(address: "The Moon").update(sqft: 457)
# delete an object
Tenant.find_by(name: "Euterpe").destroy
