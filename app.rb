require_relative "config/setup"

puts "***-Welcome to slumlord v1.0-***"
userInput = "run"
counter = 1
while userInput != "q"
  puts "********** Main Menu ***********"
  puts "1. Access Apartments"
  puts "2. Access Tenants"
  puts "** OR enter q to quit **"
  userInput = gets.chomp
  case userInput
  when "1"
    puts "--------- Apartments -----------"
    Apartment.all.each_with_index do |apartment, i|
      puts "#{i+1}. #{apartment.address}"
    end
    puts "** Enter Apartment Number to View Details **"
    puts "** Enter a to Add Apartment **"
    puts "** Enter r to Return to Main Menu **"
    puts "** Enter q to Quit **"
    apartmentChoice = gets.chomp
    case apartmentChoice
    when "q"
      userInput = "q"
    when "r"
      userInput = "run"
    when "a"
      puts "@@@@@@ Add Apartment @@@@@@"
      puts "Address:"
      new_apartment_address = gets.chomp
      puts "Monthly Rent (numbers only):"
      new_apartment_rent = gets.chomp.to_i
      puts "Square Feet (numbers only):"
      new_apartment_squarefeet = gets.chomp.to_i
      puts "number of beds (numbers only):"
      new_apartment_beds = gets.chomp.to_i
      puts "number of baths (numbers only):"
      new_apartment_baths = gets.chomp.to_i
      Apartment.create(address: new_apartment_address, monthly_rent: new_apartment_rent, sqft: new_apartment_squarefeet, num_beds: new_apartment_beds, num_baths: new_apartment_baths)
    else
      temp = Apartment.all[(apartmentChoice.to_i - 1)]
      puts ">>>>>#{temp.address}<<<<<"
      save_address = temp.address
      puts ">>#{temp.num_beds} bedroom, #{temp.num_baths} bathroom<<"
      full_bedrooms = 0
      temp.tenants.each_with_index do |tenant, i|
        puts "#{i+1}. #{tenant.name}"
        full_bedrooms += 1
      end
      vacant_bedrooms = full_bedrooms
      while temp.num_beds > vacant_bedrooms
        puts "#{vacant_bedrooms + 1}. Vacant"
        vacant_bedrooms += 1
      end
      puts "** Enter Slot Number To Change Tenant **"
      puts "** s to Sell Apartment **"
      puts "** q to Quit, r to Return to Main **"
      apartment_change = gets.chomp
      case apartment_change
      when "s"
        puts "Are you sure? y/n"
        confirm_sale = gets.chomp
        if confirm_sale == "y"
          temp.destroy
        end
      when "q"
        userInput = "q"
      when "r"
        userInput = "run"
      else
        if apartment_change.to_i > full_bedrooms
          puts "Who do you want to install?"
          Tenant.all.each_with_index do |tenant, i|
            puts "#{i+1}. #{tenant.name}"
          end
          vacant_to_tenant = gets.chomp
          Tenant.all[((vacant_to_tenant.to_i) -1)].update_attributes(apartment_id: Apartment.find_by(address: save_address).id)
        else
          puts "Who do you want to replace #{temp.tenants[apartment_change.to_i - 1].name}? (use ID)"
          Tenant.all.each do |tenant|
            if tenant.name != temp.tenants[apartment_change.to_i - 1].name
              puts "ID: #{tenant.id} Name: #{tenant.name}"
            end
          end
          temp.tenants[apartment_change.to_i - 1].update_attributes(apartment_id: nil)
          user_tenant_id = gets.chomp
          Tenant.find_by(id: user_tenant_id).update_attributes(apartment_id: Apartment.find_by(address: save_address).id)
        end
      end
    end
  when "2"
    puts "---------- Tenants -----------"
    Tenant.all.each_with_index do |tenant, i|
      puts "#{i+1}. #{tenant.name}"
    end
    puts "** Enter Tenant Number to Modify/Evict **"
    puts "** Enter a to Add Tenant **"
    puts "** Enter r to Return to Main Menu **"
    puts "** Enter q to Quit **"
    tenant_choice = gets.chomp
    case tenant_choice
    when "a"
      puts "@@@@@@ Add Tenant @@@@@@"
      puts "Name:"
      new_tenant_name = gets.chomp
      puts "Age (numbers only):"
      new_tenant_age = gets.chomp.to_i
      puts "Gender:"
      new_tenant_gender = gets.chomp
      puts "Which Apartment ID (numbers only):"
      Apartment.all.each do |apartment|
        puts "#{apartment.id}. #{apartment.address}"
      end
      new_tenant_apartment = gets.chomp.to_i
      Tenant.create(name: new_tenant_name, age: new_tenant_age, gender: new_tenant_gender, apartment_id: new_tenant_apartment)
    when "q"
      userInput = "q"
    when "r"
      userInput = "run"
    else
      puts "Tenant Name: #{Tenant.all[((tenant_choice.to_i) - 1)].name}"
      if Tenant.all[((tenant_choice.to_i) - 1)].apartment_id != nil
        puts "Location: #{Tenant.all[((tenant_choice.to_i) - 1)].apartment.address}"
      else
        puts "Location: Not Residing In Your Units"
      end
      temp_tenant_id = Tenant.all[((tenant_choice.to_i) - 1)].id
      puts "** Enter e for Evict **"
      puts "** Enter r for Relocate **"
      puts "** OR enter q to Quit or m for Main Menu"
      user_input_tenant_change = gets.chomp
      case user_input_tenant_change
      when "q"
        userInput = "q"
      when "m"
        userInput = "run"
      when "e"
        if Tenant.find(temp_tenant_id).apartment_id == nil
          puts "Tenant is not residing in any of your units. Good thing, I guess!"
        else
          Tenant.find(temp_tenant_id).update_attributes(apartment_id: nil)
          puts "Tenant evicted!"
        end
        puts "Do you want to permanently delete tenant record? y/n"
        tenant_delete = gets.chomp
        if tenant_delete == "y"
          Tenant.find(temp_tenant_id).destroy
        end
      when "r"
        temp_tenant_id = Tenant.all[((tenant_choice.to_i) - 1)].id
        puts "Which Apartment ID Do You Want to Place #{Tenant.find(temp_tenant_id).name}? (numbers only):"
        Apartment.all.each do |apartment|
          puts "#{apartment.id}. #{apartment.address}"
        end
        new_tenant_apartment = gets.chomp.to_i
        Tenant.find(temp_tenant_id).update_attributes(apartment_id: new_tenant_apartment)
      end
    end
  end
end
