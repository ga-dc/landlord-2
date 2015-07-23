# don't forget to load dependencies!
require_relative 'setup'

# create at least 3 objects of the apartment class
apt1 = Apartment.create(address: "123 Main Street",
  monthly_rent: "1200",
  sqft: 750,
  num_beds: 2,
  num_baths: 2)
apt2 = Apartment.create(address: "728 E Elm Street",
  monthly_rent: "800",
  sqft: 425,
  num_beds: 1,
  num_baths: 1)
apt3 = Apartment.create(address: "32 Venicean Avenue",
  monthly_rent: "2500",
  sqft: 950,
  num_beds: 3,
  num_baths: 2)
# create at least 9 objects(at least 5 must be long to an apartment)
tenant1 = Tenant.create(name: "Bob",
  age: 25,
  gender: "Male",
  apartment_id: 1)
tenant2 = Tenant.create(name: "Noah",
  age: 19,
  gender: "Male")
tenant3 = Tenant.create(name: "Liam",
  age: 32,
  gender: "Male",
  apartment_id: 1)
tenant4 = Tenant.create(name: "Mason",
  age: 38,
  gender: "Male",
  apartment_id: 2)
tenant5 = Tenant.create(name: "Jacob",
  age: 26,
  gender: "Male")
tenant6 = Tenant.create(name: "Emma",
  age: 19,
  gender: "Female")
tenant7 = Tenant.create(name: "Olivia",
  age: 32,
  gender: "Female",
  apartment_id: 3)
tenant8 = Tenant.create(name: "Sophia",
  age: 38,
  gender: "Female",
  apartment_id: 3)
tenant9 = Tenant.create(name: "Isabella",
  age: 26,
  gender: "Female")
# query for all objects of the Tenant class, store it in a variable
tenant_list = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find_by(apartment_id: 1)
# update any one of your objects you've created using attribute helper methods
sophia = Tenant.find_by(name: "Sophia")
sophia.age = 39 #Happy Birthday!
# save that object you just updated to the database
tenant8.save
# update an object using the update method
bob = Tenant.find_by(name: "Bob")
bob.update(name: "Robert") #wow, so offishul
# delete an object
isabella = Tenant.find_by(name: "isabella")
isabella.destroy
