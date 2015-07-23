require 'bundler/setup'
require "pg"
require "active_record"
require "pry"

require_relative "config/db"
require_relative "models/tenants"
require_relative "models/apartments"

Apartment.destroy_all
Tenant.destroy_all

Apartment.create(address:"94 Donladson Road", monthly_rent: 900 , sqft:1000, num_beds: 3, num_baths: 2.5 )
Apartment.create(address:"46 Humber Ave", monthly_rent: 850 , sqft:750, num_beds:2, num_baths:2 )
Apartment.create(address:" 123 Main Street", monthly_rent:700 , sqft:622, num_beds:1, num_baths:1 )
Apartment.create(address:"1107 Granada street", monthly_rent: 900 , sqft:821, num_beds: 2, num_baths: 1.5 )
Apartment.create(address:"2202 Research Rod", monthly_rent: 600 , sqft:500, num_beds:1, num_baths:1 )
Apartment.create(address:" 1 Galleria Drive", monthly_rent:5000 , sqft:7000, num_beds:3, num_baths:19 )

Tenant.create(first_name:"Kyle", last_name: "Williams", gender:"Male", apartment_id:30)
Tenant.create(first_name:"Nia", last_name: "Long", gender:"Female", apartment_id:29)
Tenant.create(first_name:"Susan", last_name: "Cole", gender:"Female", apartment_id:28 )

find_tenant = Tenant.all

Apartment.first.tenants

last_apt = Apartment.last
last_apt.sqft = 9000
last_apt.save

Apartment.first.update(monthly_rent: 950)

boring_steet_name = Apartment.first
boring_steet_name.destroy

binding.pry
