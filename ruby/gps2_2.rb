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