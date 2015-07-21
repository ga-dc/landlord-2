require_relative "setup"

# Patient.destroy_all
# Doctor.destroy_all

# ======= create 3 apartments
# id, address, monthly_rent, sqft, num_beds, num_baths

sherman = Apartment.create(address: "123 Sherman Ave", monthly_rent: "1400", sqft: "1200", num_beds: "2", num_baths: "1")
eleventhSt = Apartment.create(address: "4450 11th St", monthly_rent: "1200", sqft: "1000", num_beds: "1", num_baths: "1")
massAve = Apartment.create(address: "4560 Massechusetts Ave", monthly_rent: "2200", sqft: "1800", num_beds: "3", num_baths: "2")

# ======= create 4 patients
# id, name, age, gender, apartment_id

smith = Tenent.create(name: "Joe Smith", age: 23,  gender: "male", apartment_id: sherman.id)
jones = Tenent.create(name: "Mary Jones", age: 25,  gender: "female", apartment_id: sherman.id)
ralph = Tenent.create(name: "Alex Ralph", age: 24,  gender: "male", apartment_id: sherman.id)
werth = Tenent.create(name: "Ross Werth", age: 31,  gender: "male", apartment_id: eleventhSt.id)
wormley = Tenent.create(name: "Aaron Wormley", age: 35,  gender: "male", apartment_id: eleventhSt.id)
jordan = Tenent.create(name: "Lisa Jordan", age: 45,  gender: "female", apartment_id: massAve.id)
wilson = Tenent.create(name: "Emily Wilson", age: 43,  gender: "female", apartment_id: massAve.id)
desusa = Tenent.create(name: "Rolando Desusa", age: 21,  gender: "male", apartment_id: massAve.id)
northrup = Tenent.create(name: "Abigail Northrup", age: 22,  gender: "female", apartment_id: massAve.id)

puts "seeds.rb file loaded into database"

# don't forget to load dependencies!
# create at least 3 objects of the apartment class
# create at least 9 objects(at least 5 must be long to an apartment)
# query for all objects of the Tenant class, store it in a variable
# query for all instances of the Tenant class that belong to the first Apartment you created

# update any one of your objects you've created using attribute helper methods

# save that object you just updated to the database

# update an object using the update method

# delete an object


