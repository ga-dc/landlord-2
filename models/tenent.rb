
class Tenent

	# ======= initialize
	def initialize(tenent_name, tenent_age, tenent_gender)
		puts "-- initialize Tenent"
		@name = tenent_name
		@age = tenent_age
		@gender = self.set_gender(tenent_gender)
	end

	def set_name(tenent_name)
		puts "-- set_name"
		@name = tenent_name
	end

	def set_age(tenent_age)
		puts "-- set_age"
		@age = tenent_age
	end

	def set_gender(tenent_gender)
		puts "-- set_name"
		if ((tenent_gender == 'M') || (tenent_gender == 'm') || (tenent_gender == 'male'))
			@gender = 'male'
		end
		if ((tenent_gender == 'F') || (tenent_gender == 'f') || (tenent_gender == 'female'))
			@gender = 'female'
		end
	end

end







