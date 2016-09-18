puts "What is the hamster's name?"
name = gets.chomp
puts "Volume level from 1-10?"
volume = gets.chomp.to_i
puts "What is the hamster's fur color?"
fur_color = gets.chomp
puts "Is this hamster a good candidate for adoption? (yes/no)"
adoption = gets.chomp
puts "What estimated age is the hamster?"
est_age = gets.chomp.to_i

if est_age == " "
	est_age=nil
end

puts "This hamster is named #{name} and is #{est_age} years old. It's volume level is #{volume} and has #{fur_color} fur.
Is this hamster a good candidate for adoption? #{adoption}!"