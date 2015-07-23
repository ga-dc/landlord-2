require_relative "setup"

Apartment.destroy_all
Tenant.destroy_all

westminster = Apartment.create (address: "920 Westminster Street", monthly_rent: 2400, sqft: 650, num_beds: 1, num_baths: 1)
circle = Apartment.create(address: "2000 Mass Ave", monthly_rent: 2100, sqft: 600, num_beds: 1, num_baths: 1)
fancy = Apartment.create(address: "52 Swann Street", monthly_rent: 3200, sqft: 1150, num_beds: 2, num_baths: 2)

Tenant.create(name: "Bob Smith", age: 25, gender: "male", circle)
Tenant.create(name: "Maggie Johnson", age: 35, gender: "male", fancy)
Tenant.create(name: "John Johnson", age: 33, gender: "male", fancy)
Tenant.create(name: "Larson Magoo", age: 28, gender: "male", westminster)
Tenant.create(name: "Donald Crump", age: 23, gender: "male", westminster)

all_tenants = tenants.all
