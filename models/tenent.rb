
class Tenent < ActiveRecord::Base

	belongs_to :apartment

	# id, name, age, gender, apartment_id

	# ======= initialize
	def initialize()
		puts "-- initialize Tenent"
		# @name = ""
		# @age = 0
		# @gender = ""
		# @apartment_id = 0
	end

	# def set_name(tenent_name)
	# 	puts "-- set_name"
	# 	@name = tenent_name
	# end

	# def set_age(tenent_age)
	# 	puts "-- set_age"
	# 	@age = tenent_age
	# end

end








