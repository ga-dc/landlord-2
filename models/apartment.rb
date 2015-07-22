
class Apartment < ActiveRecord::Base

	has_many :tenents

	# id, address, monthly_rent, sqft, num_beds, num_baths

	# # ======= initialize
	def initialize()
		puts "-- initialize Apartment"
		# @address = ""
		# @monthy_rent = 0
		# @sqft = 0
		# @num_beds = 0
		# @num_baths = 0
	end

	# # ======= menu
	# def post_menu
	# 	puts "-- post_menu"
		
	# end

	# # ======= add new tenent
	# def add_tenent
	# 	puts "-- add_tenent"

	# 	puts "Enter tenent name"
	# 	name = gets.chomp
	# 	puts "Tenent age"
	# 	age = gets.chomp.to_i
	# 	puts "Tenent gender"
	# 	gender = gets.chomp

	# 	apartment = Apartment.all
	# 	puts "  apartment: " + apartment

	# end 

	
end

# apartment1 = Apartment.new()

# apartment1.post_menu






