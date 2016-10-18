# Method to print a list and make it look pretty
# input: iterate through each key/value pair
# steps: print on screen
# output: list

def print_list(list)
	list.each do |item, quantity|
	puts "#{item}: #{quantity}"
	end
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # set an empty array called grocery items
  # split string of items 
  # place separated items into a hash
  # set default quantity
  # print the list to the console [use print method]
# output: hash
def list(string)
	grocery_items = string.split(" ")
	hash = Hash.new
	grocery_items.each do |item|
		hash[item] = 1
	end
	print_list(hash)
end

grocery_items = list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_item(list,new_item,quantity=1)
	list[new_item] = quantity
end

add_item(grocery_items,"potato", 5)

print_list(grocery_items)

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

