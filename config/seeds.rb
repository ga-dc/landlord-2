# don't forget to load dependencies!
require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
apt1 = Apartment.create(address:"Something Street", monthly_rent: 1700, sqft: 950, num_beds: 2, num_baths: 1)
apt2 = Apartment.create(address:"Somewhere Street", monthly_rent: 1800, sqft: 650, num_beds: 1, num_baths: 1)
apt3 = Apartment.create(address:"Nowhere Street", monthly_rent: 2000, sqft: 750, num_beds: 3, num_baths: 1)

# create at least 9 objects(at least 5 must be long to an apartment)
Tenant.create(name:"Dave Smith", age: 23, gender:"Male", apartment:apt1)
Tenant.create(name:"John Doe", age: 23, gender:"Male", apartment:apt2)
Tenant.create(name:"Chandler Bing", age: 23, gender:"Male", apartment:apt3)
Tenant.create(name:"Ross Geller", age: 23, gender:"Male", apartment:apt1)
Tenant.create(name:"Rachel Green", age: 23, gender:"Male", apartment:apt2)
Tenant.create(name:"Emily Geller", age: 25, gender:"Female")
Tenant.create(name:"Joe Tribiani", age: 25, gender:"Male")
Tenant.create(name:"Monica Gheller", age: 25, gender:"Female")
Tenant.create(name:"Gunther", age: 25, gender:"Male")
#
# # query for all objects of the Tenant class, store it in a variable
tenant_search = Tenants.all
#
# # query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
#
# # update any one of your objects you've created using attribute helper methods
first_apt = Apartment.first
first_apt.monthly_rent=3000
#
# # save that object you just updated to the database
first_apt.save
# # update an object using the update method
first_apt.update(num_beds:4)
#
# # delete an object
first_apt.destroy
