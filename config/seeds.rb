# don't forget to load dependencies!

Apartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
mainst = Apartment.create(address: "1234 Main St", monthly_rent: "1000", sqft: "10", num_beds: "1" num_baths: "1")
walters = Apartment.create(address: "2020 Barbara St", monthly_rent: "2000", sqft: "800", num_beds: "2", num_baths: "2")
moon = Apartment.create(address: "1969 Moon Landing", monthly_rent: "1000", sqft: "100000000", num_beds: "1", num_baths: "1")

# create at least 9 objects(at least 5 must be long to an apartment)
buzz = Tenant.create(name: "Buzz Aldrin", age: "50", gender: "m", apartment_id: moon.id)
hugh = Tenant.create(name: "Hugh Downs", age: "60", gender: "m", apartment_id: walters.id)
adler = Tenant.create(name: "Irene Adler", age: "30", gender: "f", apartment_id: mainst.id)
dobler = Tenant.create(name: "Lloyd Dobler", age: "20", gender: "m", apartment_id: moon.id)
claire = Tenant.create(name: "Claire Randall", age: "29", gender: "f", apartment_id: moon.id)
rogers = Tenant.create(name: "Mr Rogers", age: "65", gender: "m", apartment_id: mainst.id)
libby = Tenant.create(name: "Libby Day", age: "35", gender: "f", apartment_id: moon.id)
jamie = Tenant.create(name: "Jamie Fraser", age: "19", gender: "m")
fergus = Tenant.create(name: "Fergus", age: "10", gender: "m")


# query for all objects of the Tenant class, store it in a variable
queryTenant = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
Tenant.find_by(mainst.id)

# update any one of your objects you've created using attribute helper methods
claire.name = "Claire Fraser"

# save that object you just updated to the database
claire.save

# update an object using the update method
jamie.update(apartment_id: moon.id)
jamie.save


# delete an object
rogers.destroy
