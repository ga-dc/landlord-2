
# require_relative 'tenent'

class Apartment < ActiveRecord::Base

	has_many :tenents

	# id, address, monthly_rent, sqft, num_beds, num_baths

	# ======= initialize
	def initialize()
		puts "-- initialize Apartment"
		@address = ""
		@monthy_rent = 0
		@sqft = 0
		@num_beds = 0
		@num_baths = 0
		@renters = []
	end

	# # ======= make gladiators
	# def add_tenent
	# 	puts "-- add_tenent"
	# 	if (@renters.length < @num_beds) 

	# 		puts "Please enter your first name"
	# 		first_name = gets.chomp
	# 		puts "Please enter your last name"
	# 		last_name = gets.chomp
	# 		puts "Please enter your age"
	# 		age = gets.chomp.to_i
	# 		puts "Please enter your gender"
	# 		gender = gets.chomp

	# 		tenent_name = first_name + " " + last_name

	# 		new_tenent = Tenent.new(
	# 			tenent_name,
	# 			age,
	# 			gender)

	# 		@renters.push(new_tenent)
	# 	else
	# 		puts "Sorry but all rooms are taken"
	# 	end
	# end
	
end

# apartment1 = Apartment.new()

# apartment1.add_tenent
# apartment1.add_tenent
# apartment1.add_tenent
# apartment1.add_tenent





