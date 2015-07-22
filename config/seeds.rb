# don't forget to load dependencies!
require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
apt1 = Apartment.create(address: "1133 15th St", monthly_rent: 2500, sqft: 709, num_beds: 1, num_baths: 1)
apt2 = Apartment.create(address: "1143 15th St", monthly_rent: 2800, sqft: 873, num_beds: 2, num_baths: 1)
apt3 = Apartment.create(address: "1153 15th St", monthly_rent: 4500, sqft: 987, num_beds: 3, num_baths: 2)
# create at least 9 objects(at least 5 must belong to an apartment)
Tenant.create(name: "Joseph", age: 25, gender: "Male")
Tenant.create(name: "Tatiana", age: 24, gender: "Female", apartment: apt2)
Tenant.create(name: "Lukas", age: 32, gender: "Male", apartment: apt3)
Tenant.create(name: "Jessica", age: 28, gender: "Female", apartment: apt3)
Tenant.create(name: "Max", age: 3, gender: "Male", apartment: apt3)
Tenant.create(name: "Brandon", age: 26, gender: "Male", apartment: apt1)
Tenant.create(name: "Kate", age: 24, gender: "Female")
Tenant.create(name: "Maria", age: 27, gender: "Female")
Tenant.create(name: "Jack", age: 29, gender: "Male")
# query for all objects of the Tenant class, store it in a variable
my_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
my_apt1 = Apartment.find_by(num_beds: 1)
my_apt1.tenants
# update any one of your objects you've created using attribute helper methods
my_apt3 = Apartment.last
my_apt3.address = "1253 15th St"
# save that object you just updated to the database
my_apt3.save
# update an object using the update method
my_tatyana = Tenant.find_by(name: "Tatiana")
my_tatyana.update(name: "Tatyana")
my_tatyana.save
# delete an object
Tenant.last.delete
