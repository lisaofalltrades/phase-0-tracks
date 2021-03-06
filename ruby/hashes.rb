=begin
5.2 Release 2 : Use a Hash in a Program
Pseudocode
-Welcome user
-Ask the user for the following
	-clients name
	-clients age
	-number of childen?
	-decor theme
	-decor pet peeve
	-Do you have a pool? (True/False)
-store info in a hash after each entry
-Summarize all data for user
-Thank the user and exit
-If the entry is not "none", allow the user to update the value for the key they input
-Print the updated version of the hash to the screen
=end

client_info={
	client_full_name: nil,
	client_age: nil,
	client_location: nil,
	num_children: nil,
	decor_preference: nil,
	decor_pet_peeve: nil,
	has_pool: nil,
}
puts "Welcome to the Client Database"

client_info.each {|key, value| puts "Please enter value for #{key}:"
	if key == :client_age || key == :num_children
		client_info[key] = gets.chomp.to_i
	else
		client_info[key] = gets.chomp
	end
}
client_info.each {|key, value| puts "#{key.upcase}: #{value}"}
puts "Is the data above correct? If NO, enter the name of the field you wish to change. If YES, type 'none'"

change = gets.chomp
if client_info.has_key?(change.to_sym)
	puts "Please enter new value for #{change}:"
	if change.to_sym == :client_age || change.to_sym == :client_children
		client_info[change.to_sym] = gets.chomp.to_i
	else
		client_info[change.to_sym] = gets.chomp
	end
elsif change == 'none'
	puts "Great"
else
	puts "Not a valid input."
end
client_info.each {|key, value| puts "#{key.upcase}: #{value}"}

puts "Thank you for using the Client Database"