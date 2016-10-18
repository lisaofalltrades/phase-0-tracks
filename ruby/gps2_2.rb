=begin
##### PRINT_LIST METHOD #####
input: iterate through each key/value pair
steps: print on screen
output: list of item and quantity

##### LIST METHOD #####
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  set an empty array called grocery items
  split string of items 
  place separated items into a hash
  set default quantity
  print the list to the console [use print method]
output: hash

##### ADD_ITEM METHOD #####
input: item to be added and optional quantity
output: updated list of item and quantity

##### REMOVE_ITEM METHOD #####
input: item to be removed
output: updated list of item and quantity

##### UPDATE_ITEM METHOD #####
input: item name and quantity
output: updated list of item and quantity

=end

def print_list(list)
	puts "Here is your updated list:"
	list.each { |item, quantity| puts "#{item}: #{quantity}" }
end

def create_list(string)
	grocery_items = string.split(" ")
	list = Hash.new
	grocery_items.each { |item| list[item] = 1 }
	print_list(list)
end

grocery_items = create_list("carrots apples cereal pizza")

def add_item(list,new_item,quantity=1)
	list[new_item] = quantity
end

add_item(grocery_items,"potato", 5)
print_list(grocery_items)

def remove_item(list, item)
	list.delete(item)
end

remove_item(grocery_items, "potato")
print_list(grocery_items)

def update_item(list, item, quantity)
	list[item] = quantity
end

update_item(grocery_items, "apples", 5)
print_list(grocery_items)

=begin
Release 4: Reflect
On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

What did you learn about pseudocode from working on this challenge?
What are the tradeoffs of using arrays and hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?
=end