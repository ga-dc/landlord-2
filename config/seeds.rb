# don't forget to load dependencies!
require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all
# create at least 3 objects of the apartment class
studio = Apartment.create(address: "111", monthly_rent: "#$500", sqft: "900", num_beds: "1", num_baths: "1")
highrise = Apartment.create(address: "222", monthly_rent: "$1000", sqft: "1500", num_beds: "3", num_baths: "2")
condo = Apartment.create(address: "333", monthly_rent: "$800", sqft: "1200", num_beds: "2", num_baths: "2")
# create at least 9 objects(at least 5 must belong to an apartment) ...of tenant?
Tenant.create(name: "Beth", age: "21", gender: "F", apartment_id: studio.id)
Tenant.create(name: "Bill", age: "56", gender: "M", apartment_id: highrise.id)
Tenant.create(name: "Bob", age: "34", gender: "M", apartment_id: studio.id)
Tenant.create(name: "Brittany", age: "34", gender: "F", apartment_id: condo.id)
Tenant.create(name: "Brian", age: "42", gender: "M")
Tenant.create(name: "Beverly", age: "19", gender: "F")
Tenant.create(name: "Barack", age: "52", gender: "M")
Tenant.create(name: "Brad", age: "27", gender: "M")
Tenant.create(name: "Betsy", age: "31", gender: "F")
# query for all objects of the Tenant class, store it in a variable
# Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
# Tenant.first
# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method
# condo = Apartment.find_by(address: "333")
# Tenant.find_by(name: "Brian").update(apartment_id: condo.id)
# delete an object
# Tenant.find_by(name: "Betsy").destroy
