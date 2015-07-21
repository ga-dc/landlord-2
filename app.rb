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
      puts ">>#{temp.num_beds} bedroom, #{temp.num_baths} bathroom<<"
      full_bedrooms = 0
      temp.tenants.each_with_index do |tenant, i|
        puts "#{i+1}. #{tenant.name}"
        full_bedrooms += 1
      end
      while temp.num_beds > full_bedrooms
        puts "#{full_bedrooms + 1}. Vacant"
        full_bedrooms += 1
      end
      puts "** Enter Number To Change/Lease to Tenant **"
      puts "** q to Quit, r to Return to Main **"
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
    tenantChoice = gets.chomp
  end
end
