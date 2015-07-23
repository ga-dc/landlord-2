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

# query for all objects of the Tenant class, store it in a variable

# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object
