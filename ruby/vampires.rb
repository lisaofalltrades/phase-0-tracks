def new_hire_process
	puts "Number of new employees?"
	new_employee = gets.chomp.to_i
	init = 0
	until init == new_employee
		ask_vamp
		init +=1
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

answers = [name, birthdate, age, garlic_bread, health_plan]

puts "Please list any allergies one at a time. Hit enter after every allergy. When complete, type done."
