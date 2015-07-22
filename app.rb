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
    puts "Welcome to the LandLine — a landlord command line tool! Main Menu: What would you like to do?"
    puts "Options are:"
    puts "1. View apartments by address"
    puts "2. View current tenants by name"
    puts "3. Create a new apartment"
    puts "4. Change an existing apartment's rent"
    puts "5. Create a new tenant"
    puts "6. Update a tenant's residence/apartment"
    puts "To make your selection, type 1-6, then press the 'enter' key. To exit, type 'exit.' "
end

#figuring out how to do this took me a bit, and ultimately I peeked at the solution. I didn't want to copy it, so I used an 'until' loop instead of a 'while' loop for something different.
exit_menu = false
until exit_menu
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
        puts "Let's change the rent."
        apt_address = get_input("What is the address of the apartment that you would like to update?")
        new_rent = get_input("What is the new montly rent?")
        Apartment.find_by(address: apt_address).update(monthly_rent: new_rent)
        puts "The rent has been updated."
    elsif landlord_input == "5"
        puts "Let's add a new tenant."
        name = get_input("What is the tenant's name?")
        age = get_input("What is the tenant's age?")
        gender = get_input ("What is the tenant's gender? Enter 'm' or 'f'")
        Tenant.create(name: name, age: age.to_i, gender: gender)
        puts "Your new tenant has been added!"
    elsif landlord_input == "6"
        puts "Let's change a tenant's residence."
        tenant_name = get_input("Enter the full name of the tenant you'd like to update.")
        apt_address = get_input("Which apartment does this tenant currently occupy? Please identify the apartment by address.")
        update_address = Apartment.find_by(address: apt_address).id
        Tenant.find_by(name: tenant_name).update(apartment_id: update_address)
        puts tenant_name + "'s apartment has been updated."
    elsif landlord_input == "exit"
      exit_menu = true
    end
end
