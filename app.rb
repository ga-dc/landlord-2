require_relative "config/setup"

def user_input(prompt)
  puts prompt
  return get.chomp
end

def main_menu
  puts "Welcome to Our Apartments"
  puts "Your options"
  puts "1. View All Apartments"
  puts "2. View All Tenants"
  puts "3. Add Apartment"
  puts "4. Add Tenant"
end

def add_apartment
  address = user_input("What is the address?")
  monthly_rent = user_input("What is the monthly rent?")
  sqft = user_input("How many square feet?")
  num_beds = user_input("How many bedrooms?")
  num_baths = user_input("How many bethrooms?")
  {address: address, monthly_rent: monthly_rent.to_i, sqft: sqft.to_i, num_beds: num_beds.to_i, num_baths: num_baths.to_i}
end

def add_tenant
  name = user_input("What is tenant's name?")
  age = user_input("What is the tenant's age?")
  gender = user_input("What is the tenant's gender? (Male/Female)")
  {name: name, age: age.to_i, gender: gender}
end

show_menu = true

begin
  main_menu
  answer = user_input("Please choose 1..4 or 'q' to quit")
  if answer == "1"
    puts "List of our aprtments"
    Apartment.all.each do |apartment|
      puts apartment
    end
  elsif answer == "2"
    puts "List of our tenants"
    Tenant.all.each do |tenant|
      puts tenant
    end
  elsif answer == "3"
    puts "You want to add an apartment"
    Apartment.new(add_apartment)
  elsif answer == "4"
    puts "You want to add a tenant"
    Tenant.new(add_tenant)
  elsif answer == "q"
    show_menu = false
    break
  end
end while show_menu = true

binding.pry
