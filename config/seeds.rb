require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all

Allison = Apartment.create(apartment_name: "Allison", address: "1205 Allison", monthly_rent: "900", sqft: "750", num_beds: "2", num_baths: "1", renters: "1")
Buchanan = Apartment.create(apartment_name: "Buchanan", address: "112 Buchanan", monthly_rent: "1200", sqft: "800", num_beds: "4", num_baths: "3", renters: "2")
Crittenden = Apartment.create(apartment_name: "Crittenden", address: "930 Crittenden", monthly_rent: "1500", sqft: "850", num_beds: "6", num_baths: "7", renters: "3")

Tenant.create(first_name: "Henry", last_name: "Proctor", job: "Actor", apartment_id: Allison.id)
Tenant.create(first_name: "Harrison", last_name: "Pickard", job: "PA", apartment_id: Allison.id)
Tenant.create(first_name: "Haley", last_name: "Poushon", job: "Stage hand", apartment_id: Buchanan.id)
Tenant.create(first_name: "Hardy", last_name: "Pisker", job: "Director", apartment_id: Buchanan.id)
Tenant.create(first_name: "Hoon", last_name: "Dan", job: "Producer", apartment_id: Crittenden.id)


# don't forget to load dependencies!
  #Check

# create at least 3 objects of the apartment class CHECK
  #Check

# create at least 9 objects(at least 5 must be long to an apartment) CHECK
  #Check

# query for all objects of the Tenant class, store it in a variable
  all_tenants = Tenant.all

# query for all instances of the Tenant class that belong to the first Apartment you created
  Apartment.first.tenants

# update any one of your objects you've created using attribute helper methods
  Allison.update(address: "1206 Allison")

# save that object you just updated to the database
  Allison.save

# update an object using the update method
  Allison.update(address: "1206 Allison")

# delete an object
  Crittenden.destroy
