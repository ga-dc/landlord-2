# don't forget to load dependencies!

require_relative "setup"

# create at least 3 objects of the apartment class
Tenant.destroy_all
Apartment.destroy_all

kings_landing = Apartment.create(address: "King's Landing", monthly_rent: 3200, sqft: 1400, num_beds: 4, num_baths: 2)
casterly_rock = Apartment.create(address: "Casterly Rock", monthly_rent: 3000, sqft: 1000, num_beds: 5, num_baths: 3)
winterfell = Apartment.create(address: "Winterfell", monthly_rent: 1800, sqft: 2000, num_beds: 4, num_baths: 10)
the_wall = Apartment.create(address: "The Wall", monthly_rent: 500, sqft: 5000, num_beds: 3, num_baths: 8)

# create at least 9 objects(at least 5 must be long to an apartment)

Tenant.create(name: "Bran Stark", age: 10, gender: "male", apartment_id: winterfell.id)
Tenant.create(name: "Jon Snow", age: 18, gender: "male", apartment_id: the_wall.id)
Tenant.create(name: "Samwell Tarly", age: 20, gender: "male", apartment_id: the_wall.id)
Tenant.create(name: "Eddard Stark", age: 53, gender: "male", apartment_id: winterfell.id)
Tenant.create(name: "Cersei Lannister", age: 42, gender: "female", apartment_id: kings_landing.id)
Tenant.create(name: "Tywin Lannister", age: 58, gender: "male", apartment_id: casterly_rock.id)
Tenant.create(name: "Tyrion Lannister", age: 36, gender: "male", apartment_id: kings_landing.id)
Tenant.create(name: "Kevan Lannister", age: 54, gender: "male", apartment_id: casterly_rock.id)
Tenant.create(name: "Arya Stark", age: 12, gender: "female", apartment_id: winterfell.id)

# query for all objects of the Tenant class, store it in a variable
all_tenants = Tenant.all
# query for all instances of the Tenant class that belong to the first Apartment you created
Apartment.first.tenants
# update any one of your objects you've created using attribute helper methods
winterfell.tenants.last.update_attributes(age: 13)
arya = Tenant.find_by(name: "Arya Stark")
# arya.apartment = kings_landing
=begin
or temp = winterfell.tenants.find_by(name: "Arya")
   temp.age = 13
=end

# save that object you just updated to the database
arya.age = 13
arya.save
# update an object using the update method

# delete an object
eddard = Apartment.find_by(address: "Winterfell").tenants[1]
eddard.apartment = kings_landing
eddard.destroy
