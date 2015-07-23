# don't forget to load dependencies!
require_relative "setup"
Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
A = Apartment.create(address: "123 Main St.", monthly_rent: 500, sqft: 260, num_beds: 1, num_baths: 0)
B = Apartment.create(address: "456 Main St.", monthly_rent: 1000, sqft: 500, num_beds: 1, num_baths: 1)
C = Apartment.create(address: "789 Main St.", monthly_rent: 1500, sqft: 750, num_beds: 2, num_baths: 1)
# create at least 9 objects(at least 5 must be long to an apartment)
A.tenants.create(name: "Jimbo Fisher", age: 45, gender: "Male")
A.tenants.create(name: "Les Miles", age: 50, gender: "Male")
B.tenants.create(name: "Sue Bird", age: 30, gender: "Female")
B.tenants.create(name: "Diana Turasi", age: 28, gender: "Female")
C.tenants.create(name: "Scottie Pippen", age: 48, gender: "Male")
C.tenants.create(name: "Michael Jordan", age: 51, gender: "Male")
Tenant.create(name: "Lebron James", age: 29, gender: "Male")
Tenant.create(name: "Ronda Rousey", age: 25, gender: "Female")
Tenant.create(name: "Tony Hawk", age: 60, gender: "Male")
# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
apt_1 = Tenant.where(apartment_id: 1)
# update any one of your objects you've created using attribute helper methods
les = Tenant.find_by(name: "Les Miles")
les.age = 100
# save that object you just updated to the database
les.save
# update an object using the update method
les.update(name: "Leslie Miles", gender: "Female")
# delete an object
Tenant.last.destroy
