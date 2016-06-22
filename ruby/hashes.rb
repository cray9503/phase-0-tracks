# Prompt user all of the questions
# Give each answer a variable and convert it to the proper value
# Print the hash
# Prompt user to update the hash


# Initial Prompts ----
puts "Please fill out the following information about the client:"

puts "Clients name:"
name = gets.chomp

puts "Age:"
age = gets.to_i

puts "Number of children:"
num_children = gets.to_i

puts "Decor theme:"
theme = gets.chomp

puts "Do they like modern design?"
modern_design = gets.chomp
# End Prompts ----


# Converting to boolean ----
if modern_design == "yes"
  modern_design = true
else
  modern_design = false
end
# End boolean ----


# Creating hash ----
interior_design = {
  client_name: name,
  client_age: age,
  number_of_children: num_children,
  decor_theme: theme,
  likes_modern_design: modern_design,
}
# End hash ----

p interior_design


# Prompt to change data ----
puts "Would you like to update an of the data? If yes, type the key. If no, type 'none'."
key_update = gets.chomp
# End change data ----

# Conditions to change to data ----
if key_update == "none"
  puts "Thank you."
elsif key_update == "client_name"
  puts "What would you like to change it to?"
  new_client_name = gets.chomp
  interior_design[:client_name] = new_client_name
elsif key_update == "client_age"
  puts "What would you like to change it to?"
  new_client_age = gets.chomp
  interior_design[:client_age] = new_client_age
elsif key_update == "number_of_children"
  puts "What would you like to change it to?"
  new_num_children = gets.chomp
  interior_design[:number_of_children] = new_num_children
elsif key_update == "decor_theme"
  puts "What would you like to change it to?"
  new_decor = gets.chomp
  interior_design[:decor_theme] = new_decor
elsif key_update == "likes_modern_design"
  puts "What would you like to change it to?"
  new_likes_modern = gets.chomp
  if new_likes_modern == "yes"
    new_likes_modern = true
  else
    new_likes_modern = false
  end
  interior_design[:likes_modern_design] = new_likes_modern
end
# End Conditions ----


p interior_design
