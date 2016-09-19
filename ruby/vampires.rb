def new_hire_process
	puts "Number of new employees to be processed?"
	new_employee = gets.chomp.to_i
	init = 0
	until init == new_employee
		ask_vamp
		init += 1
	end
	puts "."
	puts "."
	puts "."
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end

def new_hire_questions
puts "What is your name?"
name = gets.chomp
puts "What year were you born?"
birthdate = gets.chomp.to_i
puts "How old are you?"
age = gets.chomp.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
garlic_bread = gets.chomp.downcase
	if garlic_bread[0] == "yes"
		garlic_bread = true
	else
		garlic_bread = false
	end
puts "Would you like to enroll in the company’s health insurance? (Yes/No)"
health_plan = gets.chomp.downcase
	if health_plan[0] == "yes"
		health_plan = true
	else
		health_plan = false
	end
end
answers = [name, birthdate, age, garlic_bread, health_plan]

puts "Please list any allergies one at a time. Hit enter after every allergy. When complete, type done."
	while allergies != "sunshine" && alergies != "done"
			allergies - gets.chomp
			if allergies == "sunshine"
				puts "Probably a vampire."
			else allergies == "done"
				is_vamp(answers)
			end
end
	

def is_vamp(ask_vamp)
	time = time.new
	if (ask_vamp[0] == "Dracula" || ask_vamp[0] == "Fang")
		puts "Definitely a vampire."
	elsif (ask_Vamp[2] == time.year - ask_Vamp[1]) && (ask_Vamp[3] == true || ask_Vamp[4] == true)
		puts "Probably not a vampire."
	elsif (ask_Vamp[2] != time.year - ask_Vamp[1]) && (ask_Vamp[3] == false && ask_Vamp[4] == false)
		puts "Almost certainly a vampire."
	elsif (ask_Vamp[2] != time.year - ask_Vamp[1]) && (ask_Vamp[3] == false || ask_Vamp[4] == false)
		puts "Probably a vampire."
	else
		puts "Hrmm... Not sure!"
	end
end
new_hire_process