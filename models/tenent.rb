
class Tenent < ActiveRecord::Base

	belongs_to :apartment

	# id, name, age, gender, apartment_id

	# ======= initialize
	def initialize()
		puts "-- initialize Tenent"
		@name = ""
		@age = 0
		@gender = ""
		@apartment_id = 0
	end

	# def set_name(tenent_name)
	# 	puts "-- set_name"
	# 	@name = tenent_name
	# end

	# def set_age(tenent_age)
	# 	puts "-- set_age"
	# 	@age = tenent_age
	# end

	# def set_gender(tenent_gender)
	# 	puts "-- set_name"
	# 	if ((tenent_gender == 'M') || (tenent_gender == 'm') || (tenent_gender == 'male'))
	# 		@gender = 'male'
	# 	end
	# 	if ((tenent_gender == 'F') || (tenent_gender == 'f') || (tenent_gender == 'female'))
	# 		@gender = 'female'
	# 	end
	# end

end







