require_relative "config/setup"
def get_input(prompt)
  puts prompt
  return gets.chomp
end

def linebreak
  "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
end

def menu
  puts linebreak
  puts "Welcome to the Main Menu"
  puts linebreak
  puts "Menu"
  puts "1) View Apartments"
  puts "2) View All Tenants"
  puts "3) Create Apartment"
  puts "4) Create Tenant"
end
main_menu = true
while main_menu
  menu
  selection = get_input("Select 1-4 to continue, or \"q\" to quit")
  if selection.to_i == 1
    Apartment.all.each do |apartment|
      puts apartment.address
    end
  elsif selection.to_i == 2
    Tenant.all.each do |tenant|
      puts tenant.name
    end
  elsif selection.to_i == 3
    address = get_input ("What is the apartment's address?")
    rent = get_input ("What is the monthly rent?")
    sqft = get_input ("What's the square footage?")
    beds = get_input("How many beds?")
    baths = get_input("How many baths?")
    Apartment.create(address: address, monthly_rent: rent.to_i, sqft: sqft.to_i, num_beds: beds.to_i, num_baths: baths.to_i)
  elsif selection.to_i == 4
    name = get_input("What is the tenant's name?")
    age = get_input("What is the tenant's age?")
    gender = get_input("What gender is the tenant?")
    Tenant.create(name: name, age: age, gender: gender)
  elsif selection == "q"
    puts "Goodbye"
    main_menu = false
  end
end
binding.pry
