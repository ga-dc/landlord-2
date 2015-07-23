require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
apt1 = Apartment.create(address: "1234 Apple Street 1A", monthly_rent: 1000, sqft: 750, num_beds: 1, num_baths: 1)
apt2 = Apartment.create(address: "1234 Apple Street 2B", monthly_rent: 1500, sqft: 900, num_beds: 2, num_baths: 1)
apt3 = Apartment.create(address: "1234 Apple Street 3C", monthly_rent: 2000, sqft: 1400, num_beds: 2, num_baths: 2)
apt4 = Apartment.create(address: "1234 Apple Street 4D", monthly_rent: 2500, sqft: 1700, num_beds: 3, num_baths: 3)
apt5 = Apartment.create(address: "1234 Apple Street 5F", monthly_rent: 3000, sqft: 2500, num_beds: 4, num_baths: 4)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(first_name: "Michael", last_name: "Jordan", age: 55, gender: "Male", apartment_id: apt1.id)
Tenant.create(first_name: "Lionel", last_name: "Messi", age: 30, gender: "Male", apartment_id: apt2.id)
Tenant.create(first_name: "Tiger", last_name: "Woods", age: 40, gender: "Male", apartment_id: apt3.id)
Tenant.create(first_name: "Wayne", last_name: "Rooney", age: 29, gender: "Male", apartment_id: apt2.id)
Tenant.create(first_name: "Joe", last_name: "Smith", age: 35, gender: "Male", apartment_id: apt4.id)
Tenant.create(first_name: "Tom", last_name: "Watson", age: 65, gender: "Male", apartment_id: apt3.id)
Tenant.create(first_name: "Will", last_name: "Smith", age: 48, gender: "Male", apartment_id: apt4.id)
Tenant.create(first_name: "Bruce", last_name: "Wayne", age: 40, gender: "Male", apartment_id: apt3.id)
Tenant.create(first_name: "Brice", last_name: "Harper", age: 25, gender: "Male", apartment_id: apt5.id)
Tenant.create(first_name: "John", last_name: "Kim", age: 21, gender: "Male", apartment_id: apt5.id)

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
person = Tenant.find_by(age: 40)
person.last_name = "Piglet"

# save that object you just updated to the database
person.save

# update an object using the update method
john = Tenant.find_by(first_name: "John")
john.update(age: 30, gender: "Female")

# delete an object
unoccupied = Tenant.find_by(apartment_id: 16)
unoccupied.destroy
