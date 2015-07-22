require "pg"
require "active_record"
require "pry"

require_relative "../models/apartment.rb"
require_relative "../models/tenant.rb"
require_relative "../config/db.rb"

Apartment.destroy_all
Tenant.destroy_all

# Creates at least three instances of the apartment class.
arlington = Apartment.create(address: "1234 1st St", monthly_rent: 500,  sqft: 600, num_beds: 1, num_baths: 1)
clarendon = Apartment.create(address: "5678 2nd St", monthly_rent: 700,  sqft: 800, num_beds: 1, num_baths: 1)
loudoun = Apartment.create(address: "9101 3rd St", monthly_rent: 900,  sqft: 1000, num_beds: 2, num_baths: 2)
reston = Apartment.create(address: "1112 4th St", monthly_rent: 1500,  sqft: 1600, num_beds: 3, num_baths: 2)
washington = Apartment.create(address: "1314 5th St", monthly_rent: 5000,  sqft: 2000, num_beds: 2, num_baths: 2)

# Creates at least nine instances of the tenant class. At least five should belong to an apartment.

# Alington apartments.
Tenant.create(name: "Silvia Brown", age: 27, gender: "Female", apartment_id: arlington.id)
Tenant.create(name: "Darrius Taylor", age: 25, gender: "Male", apartment_id: arlington.id)

# Clarendon apartments.
Tenant.create(name: "Pierce Hanley", age: 31, gender: "Male", apartment_id: clarendon.id)
Tenant.create(name: "Selam Tegene", age: 35, gender: "Female", apartment_id: clarendon.id)

# Loudoun County apartments.
Tenant.create(name: "Tim Foley", age: 26, gender: "Male", apartment_id: loudoun.id)
Tenant.create(name: "Alison Buki", age: 25, gender: "Female", apartment_id: loudoun.id)

# Reston apartments.
Tenant.create(name: "Erika Johnson", age: 27, gender: "Female")
Tenant.create(name: "Alex Bruns", age: 40, gender: "Male")

# Washington D.C. apartments.
Tenant.create(name: "Chris Coleman", age: 32, gender: "Male")
Tenant.create(name: "Barbara Brown", age: 55, gender: "Female")

# Queries for all instances of the tenant class and stores it in a variable of your choice.
all_tenants = Tenant.all

# Query for all instances of the tenant class that belong to the first Apartment you created.
Apartment.first.tenants

# Update any one of your objects you've created using attribute helper methods.
reston = Apartment.find_by(sqft: 1600)
reston.update(monthly_rent: 2500)
# Due to the Reston line, people.
# Landlord needs the moneyyyyzzzz.

# Save that object you just updated to the database.
reston.save
reston.reload

# Update an object using the update method
Tenant.last.update(apartment_id: reston)

# Deletes one of the objects you've created.
Tenant.last.delete