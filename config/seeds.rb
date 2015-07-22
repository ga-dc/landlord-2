# don't forget to load dependencies!
require_relative "setup"
Tenant.destroy_all
Apartment.destroy_all

# create at least 3 objects of the apartment class
no_br = Apartment.create(address: "123 Drive Way", monthly_rent: 69, sqft: 500, num_beds: 2, num_baths: 1)
one_br = Apartment.create(address: "123 Park Way", monthly_rent: 123, sqft: 750, num_beds: 2, num_baths: 1.5)
two_br = Apartment.create(address: "308 Negra Arroyo Ln", monthly_rent: 666, sqft: 1000, num_beds: 2, num_baths: 2)
box = Apartment.create(address: "Dark Alley Behind Wendy's", monthly_rent: 0, sqft: 2, num_beds: 0, num_baths: 0)

# create at least 9 objects(at least 5 must be long to an apartment)
billy = Tenant.create(name: "Billy Blank", age: 65, gender: "m", apartment_id: no_br.id)
walt = Tenant.create(name: "Walter White", age: 55, gender: "m", apartment_id: two_br.id)
skyler = Tenant.create(name: "Skyler White", age: 54, gender: "f", apartment_id: two_br.id)
walt_jr = Tenant.create(name: "Walt Junior", age: 18, gender: "m", apartment_id: two_br.id)
nancy = Tenant.create(name: "Nancy Hicks-Gribble", age: 45, gender: "f", apartment_id: one_br.id)
john = Tenant.create(name: "John Redcorn", age: 48, gender: "m", apartment_id: one_br.id)
hm_1 = Tenant.create(name: "Homeless Man 1", age: 5, gender: "f", apartment_id: box.id)
hm_2 = Tenant.create(name: "Homeless Man 2", age: 6, gender: "f", apartment_id: box.id)
hm_3 = Tenant.create(name: "Homeless Man 3", age: 102, gender: "f", apartment_id: box.id)


# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
find_by(apartment_id: "no_br")
# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database
hm_3.save
# update an object using the update method
hm_3.update(gender: "m")
# delete an object
hm_3 = Tenant.find_by(name: "Homeless Man 3")
hm_3.destroy
