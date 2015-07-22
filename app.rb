require_relative "config/setup"

puts "Would you like to make a new apparment or person?"
print "yes OR no? "

if gets.chomp == "yes"
  puts "Which one?\nType: 'app' for an apparment\nOR\nType: 'per' for a person"

  if gets.chomp == "app"

  elsif gets.chomp == "per"

  end

end

def create_person (name, age, gender, apparment)
  Tenant.create(name: name,
                 age: age,
              gender: gender,
       appartment_id: apparment.id)
end

def create_appartment (address, rent, sqft, beds, baths)
  Appartment.create(address: address,
               monthly_rent: rent,
                       sqft: sqft,
                   num_beds: beds,
                  num_baths: baths)
end

#go into pry with all these dependences loaded
#you would have access to anything declared in this file in pry
binding.pry
