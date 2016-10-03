class Santa
	def speak
		puts "Ho, Ho, Ho! Haaaappy Holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
	# def gender=(gender)
	# 	@gender = gender
	# end

	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end
end

# santa = Santa.new

# santa.speak
# santa.eat_milk_and_cookies("chocolate chip")

# arr_of_santa_objects = []
# genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# ethnicities = ["black", "Latino", "white", "Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# index = 0
# genders.each do |gender|
# 	arr_of_santa_objects << Santa.new(gender, ethnicities[index])
# 	index += 1
# end

# arr_of_santa_objects[0].celebrate_birthday
# arr_of_santa_objects[0].get_mad_at("Rudolph")
# arr_of_santa_objects[0].gender = "gender neutral"
# p arr_of_santa_objects[0].age
# p arr_of_santa_objects[0].ethnicity

# p arr_of_santa_objects[0]