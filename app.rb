require_relative "config/setup"

space = "========================================================================"
puts space
puts "Welcome to your friendly neighborhood landlord application \n"
# menu for landlord
puts "Menu: \n Enter 1 to list all apartments \n Enter 2 to list all tenants \n Enter 3 to create an apartment \n Enter 4 to add a tenant \n Or Press 5 at anytime to quit"
option = gets.chomp.to_i
 until option == 5
   if option == 1
     Apartment.all.each do |apt|
      puts apt.address
    end
    puts space
    puts "Menu: \n Enter 1 to list all apartments \n Enter 2 to list all tenants \n Enter 3 to create an apartment \n Enter 4 to add a tenant \n Or Press 5 at anytime to quit"
    option = gets.chomp.to_i
  elsif option == 2
      Tenant.all.each do |t|
       puts t.name
     end
     puts space
     puts "Menu: \n Enter 1 to list all apartments \n Enter 2 to list all tenants \n Enter 3 to create an apartment \n Enter 4 to add a tenant \n Or Press 5 at anytime to quit"
     option = gets.chomp.to_i
  elsif option == 3
    puts "Please enter in address \n"
    new_address = gets.chomp
    new_apt = Apartment.create(address: new_address)
    puts "How much is rent?"
    rent = gets.chomp.to_i
    new_apt.monthly_rent = rent
    puts "How many square feet? \n"
    sft = gets.chomp.to_i
    new_apt.sqft = sft
    puts "How many bedrooms? \n"
    bedrooms = gets.chomp.to_i
    new_apt.num_beds = bedrooms
    puts "How many bathrooms? \n"
    bathrooms = gets.chomp.to_i
    new_apt.num_baths = bathrooms
    puts "New appartment successfully entered"
    puts space
    puts "Menu: \n Enter 1 to list all apartments \n Enter 2 to list all tenants \n Enter 3 to create an apartment \n Enter 4 to add a tenant \n Or Press 5 at anytime to quit"
    option = gets.chomp.to_i
  elsif option == 4
    puts "Please enter tenant's name \n"
    new_name = gets.chomp
    new_tenant = Tenant.create(name: new_name)
    puts "How old is the tenant?"
    new_age = gets.chomp.to_i
    new_tenant.age = new_age
    puts "Whats the tenant's gender? \n"
    gen = gets.chomp
    new_tenant.gender = gen
    puts "Which apartment do they rent? (enter address)\n"
    apt = gets.chomp
    apt_id = Apartment.find_by(address: apt).id
    new_tenant.apartment_id = apt_id
    new_tenant.save 
    puts "New tenant successfully added"
    puts space
    puts "Menu: \n Enter 1 to list all apartments \n Enter 2 to list all tenants \n Enter 3 to create an apartment \n Enter 4 to add a tenant \n Or Press 5 at anytime to quit"
    option = gets.chomp.to_i
  end
end
binding.pry
