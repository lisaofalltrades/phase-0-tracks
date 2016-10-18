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

1. What did you learn about pseudocode from working on this challenge?
Pseudocode is harder than you think! Something that might seem so obvious to me may not be obvious to someone else.

2. What are the tradeoffs of using arrays and hashes for this challenge?
Arrays don't have the ability to store a quantity of an item.

3. What does a method return?
A method returns an action. You set this action by writing the rules inside the method.
So when you call the method, it "does" the action. 

4. What kind of things can you pass into methods as arguments?
Numbers, strings, booleans, & data structures.

5. How can you pass information between methods?
Through a parameter. 

6. What concepts were solidified in this challenge, and what concepts are still confusing?
I appreciated being able to practice interating through hashes as well as calling a method within a method.

=end