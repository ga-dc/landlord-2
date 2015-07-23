require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# don't forget to load dependencies!

# create at least 3 objects of the apartment class
park_supervisor_lot = Apartment.create(address: "Lot 1", monthly_rent: 0, sqft: 4000, num_beds: 3, num_baths: 2)
Apartment.create(address: "Lot 12", monthly_rent: 500, sqft: 2000, num_beds: 2, num_baths: 1)
Apartment.create(address: "Lot 24", monthly_rent: 500, sqft: 2000, num_beds: 2, num_baths: 1)
Apartment.create(address: "Julian's Car", monthly_rent: 10, sqft: 20, num_beds: 1, num_baths: 1)
Apartment.create(address: "Bubbles' Shed", monthly_rent: 200, sqft: 200, num_beds: 2, num_baths: 0)
# create at least 9 objects(at least 5 must belong to an apartment)
park_supervisor_lot.tenants.create(name: "Mr. Leahy", age: 60, gender: "Male")
park_supervisor_lot.tenants.create(name: "Randy", age: 35, gender: "Male")
Tenant.create(name: "Bubbles", age: 28, gender: "Male", apartment_id: Apartment.find_by(address: "Bubbles' Shed").id)
Tenant.create(name: "Cyrus", age: 40, gender: "Male", apartment: Apartment.find_by(address: "Lot 12"))
julian = Tenant.new(name: "Julian", age: 30, gender: "Male")
Tenant.create(name: "Ricky", age: 30, gender: "Male")
Apartment.find_by(address: "Lot 12").tenants = [julian] #This adds Julian to the database which makes sense but I wasn't expecting
# delete an object
Tenant.find_by(name: "Cyrus").destroy
# update an object using the update method
Tenant.find_by(name: "Ricky").update(apartment: Apartment.find_by(address: "Julian's car"))
(1..3).each {|num| Apartment.find_by(num_baths: 0).tenants.create(name: "Cat No. #{4 - num}", age: (num * 7), gender: "?")}
# update any one of your objects you've created using attribute helper methods
julian.age = 31
# save that object you just updated to the database
julian.save
# query for all objects of the Tenant class, store it in a variable
tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
love_birds = Tenant.where(apartment: Apartment.first)
