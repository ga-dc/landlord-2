require "pg"
require "active_record"
require "pry"

require_relative "../models/tenants"
require_relative "../models/apartments"

require_relative "../config/db.rb"

Tenants.destroy_all
Apartments.destroy_all

Apartment.create(address:"94 Donladson Road", monthly_rent: 900 , sqft:1000, num_beds: 3, num_baths: 2.5 )
Apartment.create(address:"46 Humber Ave", monthly_rent: 850 , sqft:750, num_beds:2, num_baths:2 )
Apartment.create(address:" 105 Rounds", monthly_rent:850 , sqft:800, num_beds:3, num_baths:1 )



binding.pry
