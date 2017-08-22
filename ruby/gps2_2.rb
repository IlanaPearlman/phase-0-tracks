# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a new hash with default value of 1.
  # iterate through the string adding values to the new hash.
  # print the list to the console [use print the list method.]
  # return hash
# output: hash
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# check to see if item is already in the list.
# if it is on list, incriment item.
# if it is not on the list,add item to list with stated quantity to the existing hash.
# output: updated hash
# Method to remove an item from the list
# input: list, item name
# steps:
# delete item from list.
# output: updated hash
# Method to update the quantity of an item
# input: list, item name, and optional quantity
# steps:
# add item to list with stated quantity to the existing hash.
# output: updated hash
# Method to print a list and make it look pretty
# input: hash
# steps: iterate through the hash and put item and quantity on separate line.
# output: nil
def print_groceries(groceries)
  groceries.each do |item, number|
    puts "#{item} (#{number})"
  end
end
def create_list(str)
  groceries = Hash.new
  str.split(" ").each do |item|
    groceries[item] = 1
  end
  print_groceries(groceries)
  return groceries
end
def add_item(groceries, item, quantity = 1)
  if groceries.include?(item)
    groceries[item]+=quantity
  else
    groceries[item] = 1
  end
  return groceries
end
list = create_list("apples bananas pear")
def remove_item(groceries, item)
  groceries.delete(item)
  return groceries
end
#remove_item(list, "apples")
#add_item(list, "apples")
def update_quantity(groceries, item, quantity)
  groceries[item] = quantity
  return groceries
end
#update_quantity(list, "pineapple", 5)
update_quantity(list, "lemonade", 2)
update_quantity(list, "tomatoes", 3)
update_quantity(list, "onions", 1)
update_quantity(list, "ice cream", 4)
remove_item(list, "lemonade")
update_quantity(list, "ice cream", 1)
print_groceries(list)

=begin
REFLECTION

What did you learn about pseudocode from working on this challenge?
- It organizes work well.
What are the tradeoffs of using arrays and hashes for this challenge?
- A hash stores the string grocery names and their numeral values conviniently. Whereas arrays would require a parallel set of data, such as by using 2 arrays or one array with alternating items and numbers.
What does a method return?
- It returns the return statement, or if none, the result of the final operation, or if none, nil.
What kind of things can you pass into methods as arguments?
- Any variables or a block.
How can you pass information between methods?
- You can pass iformation between methods by passing parameters to the methods.
What concepts were solidified in this challenge, and what concepts are still confusing?
- It addressed local variables, but which variables are changed by their use in methods when outside of the scope of that method was not explained.
=end

end