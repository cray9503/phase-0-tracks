# First Method ----
def three_array(a,b,c)
  array = []
  array.push(a,b,c)
  p array
end
# End ----

# Second Method ----
def add_array(a, b)
  b << a
  p b
end
# End ----

# Driver Code ----
three_array(4, "Monkey", "Apple")
add_array(4, ["pear", "apple", "ornage"])
add_array("grapes", ["apples", 43, "blue"])
# End ----


# String manipulation ----
my_array = []
p my_array

my_array.push("dog", "cat", "fish", "bird", "elephant")
p my_array

my_array.delete_at(2)
p my_array

my_array.insert(2, "monkey")
p my_array

my_array.shift
p my_array

if my_array.include?("monkey") == true
  puts "Yes, there is a monkey"
else
  puts "No, there is no monkey"
end

second_array = ["blue", "yellow", "green", 10]

new_array = my_array + second_array
p new_array
# End ----
