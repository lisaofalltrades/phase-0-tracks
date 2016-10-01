# def blocktaker
#     puts "Before yield"
#     yield("Chocolate", "Raspberry")
#     puts "After yield"
# end

# blocktaker { |flavor1, flavor2| puts "I love #{flavor1}, but not as much as #{flavor2}."}

# ice_cream = ["Blackberry", "Neopolitan", "Moose tracks", "Mint", "Vanilla"]
# colors = {
#     blue: "eulb",
#     orange: "egnaro",
#     green: "neerg",
#     white: "etihw",
#     black: "kcalb"
# }

# upcase_flavor = []
# p ice_cream

# ice_cream.each do |flavor|
#     upcase_flavor << flavor.upcase
#     p "I LOVE #{flavor.upcase}"    
# end
# print upcase_flavor

# p ice_cream
# ice_cream.map! do |flavor|
#     flavor + "!!!!!!"
# end
# p ice_cream

# p colors
# colors.each do |color, backwards|
#     p "#{backwards} is #{color} spelled backwards!"
# end


array = [1, 5, 9, 11, 3, 4]
hash = {
    horror: "Scream",
    action: "Indiana Jones",
    comedy: "Zoolander",
    romantic: "Titanic",
    science_fiction: "Star wars"
}
#--------------Release 2 Q1 Array--------------------
# high_array = []
# array.each do |number|
#     high_array = array.delete_if{|array| array < 5}
# end 
# puts "Numbers in the array higher than 5 are #{high_array}."
#--------------Release 2 Q1 Hash---------------------
# new_hash = hash.each do |genre, movie|
#     hash.delete_if {|genre| genre == :comedy}
# end
# p new_hash

#--------------Release 2 Q2 Array--------------------
# low_array = []
# array.each do |number|
#     low_array = array.keep_if{|array| array <= 5}
# end
# puts "Numbers in the array lower than 5 are #{low_array}."
#--------------Release 2 Q2 Hash---------------------

# keep_hash = hash.each do |genre, movie|
#     hash.keep_if {|genre| genre != :horror}
# end
# p keep_hash
#--------------Release 2 Q3 Array---------------------
# even_array = []
# array.each do |num|
#     even_array = array.select{ |num| num.even?}
# end
# p even_array
#--------------Release 2 Q3 Hash---------------------
# new_hash = {}
# new_hash = hash.each do |genre, movie|
#     hash.select! {|genre| genre == :horror }
# end
# p new_hash

#------------Release 2 Q4 Hash-------------------------

p hash.reject! {|genre, movie| genre == :science_fiction}