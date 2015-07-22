#
# require 'active_record'
# require 'pry'
#
# require_relative 'models/apartment'
# require_relative 'models/tenant'
# require_relative 'config/db.rb'

require 'active_record'
require 'pry'

require_relative 'models/apartment'
require_relative 'models/tenant'
require_relative 'config/db.rb'

def get_input(prompt)
  puts prompt
  return gets.chomp
end

def menu
    puts "Hello! Welcome to the LandLine — a landlord command line tool! What would you like to do?"
    puts "Options are:"
    puts "1. View apartments"
    puts "2. View current tenants"
    puts "3. Create a new apartment"
    puts "4. Create a new tenant"
    puts "To make your selection, type 1, 2, 3, or 4, then press the 'enter' key."
end



in_menu = true
while in_menu
    menu
    landlord_input = gets.chomp
    if landlord_input == "1"
        puts "Not a problem. Here you go:"
        Apartment.all.each do |apartment|
          puts apartment.address
        end
    elsif landlord_input == "2"
        puts "Not a problem. Here you go:"
        Tenant.all.each do |tenant|
            puts tenant.name
        end
    elsif landlord_input == "3"
        puts "Let's add a new apartment."
        address = get_input("What is the new apartment's address?")
        monthly_rent = get_input("What is the monthly rent?")
        sqft = get_input("What is the square footage?")
        num_beds = get_input("How many bedrooms does it have?")
        num_baths = get_input("How many bathrooms does it have?")
        Apartment.create(address: address, monthly_rent: monthly_rent.to_i, sqft: sqft.to_i, num_beds: num_beds.to_i, num_baths: num_baths.to_i)
        puts "Your new apartment has been added!"
    elsif landlord_input == "4"
        puts "Let's add a new tenant."
        name = get_input("What is the tenant's name?")
        age = get_input("What is the tenant's age?")
        gender = get_input ("What is the tenant's gender? Enter 'm' or 'f'")
        Tenant.create(name: name, age: age.to_i, gender: gender)
        puts "Your new tenant has been added!"
    end
    puts "back to the main menu!"
end
