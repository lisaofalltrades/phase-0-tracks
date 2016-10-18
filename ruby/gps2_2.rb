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
	p hash
end

grocery_items = list("carrots apples cereal pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: