# don't forget to load dependencies!
require_relative "setup"

Appartment.destroy_all
Tenant.destroy_all

# create at least 3 objects of the apartment class
luxury = Appartment.create(address: "123 Luxury Ln, Alexandria, VA",
                      monthly_rent: 2000,
                              sqft: 1200,
                          num_beds: 4,
                         num_baths: 5)

modern = Appartment.create(address: "456 Modern Dr, Fairfax, VA",
                      monthly_rent: 1200,
                              sqft: 800,
                          num_beds: 3,
                         num_baths: 2)

affordable = Appartment.create(address: "789 Cheap Rd, Arlington, VA",
                          monthly_rent: 800,
                                  sqft: 650,
                              num_beds: 2,
                             num_baths: 2)

# create at least 9 objects(at least 5 must belong to an apartment)
Tenant.create(name: "Brad",
               age: 23,
            gender: "f",
     appartment_id: Appartment.all[1].id)

Tenant.create(name: "Jon",
               age: 42,
            gender: "m",
     appartment_id: Appartment.all[1].id)

Tenant.create(name: "Lucy",
               age: 19,
            gender: "f",
     appartment_id: Appartment.last.id)

Tenant.create(name: "Ray",
               age: 21,
            gender: "m",
     appartment_id: Appartment.last.id)

Tenant.create(name: "Morgan",
               age: 32,
            gender: "f",
     appartment_id: Appartment.all[1].id)

Tenant.create(name: "Teddy",
               age: 99,
            gender: "m",
     appartment_id: Appartment.first.id)

Tenant.create(name: "Emily",
               age: 18,
            gender: "f",
     appartment_id: Appartment.last.id)

Tenant.create(name: "Kate",
               age: 24,
            gender: "f",
     appartment_id: Appartment.first.id)

Tenant.create(name: "Felix",
               age: 44,
            gender: "m",
     appartment_id: Appartment.all[1].id)

# query for all objects of the Tenant class, store it in a variable

all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created

Appartment.first.tenants

# update any one of your objects you've created using attribute helper methods

affordable.sqft = 700

# save that object you just updated to the database

affordable.save

# update an object using the update method

Appartment.first.update(monthly_rent: 1900)

# delete an object

Tenant.last.destroy
