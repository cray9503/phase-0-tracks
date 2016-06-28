# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Define a hash
  # split items
  # Place items into hash as key
  # Set default quantity
  # print the list to the console using print method
# output: hash

list = {}
def list_creator(list, stg)
  stg_array = stg.split(' ')
  stg_array.each do |item|
  list[item] = 0
  end
end

list_creator(list, "apple banana grape")


# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # insert two values into hash as the key and value
# output: hash with updated values

def add_to_list(list, stg, num)
  list[stg] = num
end

# add_to_list(list, "cake", 3)



# Method to remove an item from the list
# input: item that needs to be deleted
# steps:
  # delete item from hash
# output: hash with updated list

def delete_item(list, stg)
  list.delete(stg)
end

# delete_item(list, "apple")

# Method to update the quantity of an item
# input: item that needs to be changed along with the updated quantity
# steps:
  # call the desired key and set it equal to new quantity
# output: hash with updated list

def item_quantity(list, stg, num)
  list[stg] = num
end

item_quantity(list, "grape", 4)


# Method to print a list and make it look pretty
# input: hash
# steps:
  # Iterate through hash and print key and value
# output: the list showing items and quantities

def print_list(list)
  puts "--------------------------"
  puts "Here is your grocery list:"
  list.each do |item, quantity|
    puts "You need #{quantity} #{item}"
  end
  puts "--------------------------"
end

print_list(list)
