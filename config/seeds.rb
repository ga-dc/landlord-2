require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# destroys existing data in database

# don't forget to load dependencies!

# create at least 3 objects of the apartment class

Apartment.create(address: "4355 S. 3rd St.", monthly_rent: 700, sqft: 500, num_beds: 1, num_baths: 1)
Apartment.create(address: "4562 N. 5th St.", monthly_rent: 1200, sqft: 1000, num_beds: 2, num_baths: 2)
Apartment.create(address: "5923 E. 7th St.", monthly_rent: 1600, sqft: 1500, num_beds: 3, num_baths: 2)

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create(name: "Frodo", age: 50, gender: "male", apartment_id: 1)
Tenant.create(name: "Sam", age: 30, gender: "male", apartment_id: 2)
Tenant.create(name: "Merry", age: 27, gender: "male", apartment_id: 2)
Tenant.create(name: "Pippin", age: 26, gender: "male", apartment_id: 2)
Tenant.create(name: "Gandolf", age: 90, gender: "male", apartment_id: 1)
Tenant.create(name: "Aragorn", age: 43, gender: "male", apartment_id: 3)
Tenant.create(name: "Boremir", age: 40, gender: "male", apartment_id: 3)
Tenant.create(name: "Legolos", age: 300, gender: "male", apartment_id: 3)
Tenant.create(name: "gimli", age: 62, gender: "male", apartment_id: 3)

# query for all objects of the Tenant class, store it in a variable

@all_tenants = Tenant.all
 
# query for all instances of the Tenant class that belong to the first Apartment you created

@first_apartment_tenants = Tenant.where(apartment_id: 1)

# update any one of your objects you've created using attribute helper methods

@frodo = Tenant.find_by(name: "Frodo")

@apartment_2 = Apartment.find_by(address: "4562 N. 5th St.")

@frodo.apartment = @apartment_2

# save that object you just updated to the database

@frodo.save

# update an object using the update method

@merry = Tenant.find_by(name: "Merry")

@merry.update(age: 30)

# delete an object

@gandolf = Tenant.find_by(name: "Gandolf")

@gandolf.destroy
