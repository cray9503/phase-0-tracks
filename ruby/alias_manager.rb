# Method to split and swap names ----

def name_split(stg)
  split_name = stg.split(' ')
  spy_name = [split_name[1], split_name[0]]
  $first_spy_name = spy_name[0].split('')
  $last_spy_name = spy_name[1].split('')
end

# End ----


# Method to shift vowels ----

def shift_vowel(array)
  $vowels = ["a", "e", "i", "o", "u"]
  array.map! do |letter|
  if letter == "u"
    letter = "a"
  elsif $vowels.include?(letter) == true
        $vowels[$vowels.index(letter) + 1]
  else letter = letter
  end
end
end

# End ----


# First prompt ----

  puts "What name would you like to make fake?"
  original_name = gets.chomp

  name_split(original_name)
  shift_vowel($first_spy_name)
  shift_vowel($last_spy_name)

  offical_spy_name = ($first_spy_name.join('').capitalize + " " + $last_spy_name.join('').capitalize)

  puts "Your offical spy name is #{offical_spy_name}!"

  spy_name_array = []
  spy_name_array.push(offical_spy_name)

# End ----


# Prompt loop ----

loop_status = true

while loop_status == true do
  puts "Enter the next name you would like to change or type 'quit'."
  original_name = gets.chomp

  if original_name == "quit"
    break
  end

    name_split(original_name)
    shift_vowel($first_spy_name)
    shift_vowel($last_spy_name)

    offical_spy_name = ($first_spy_name.join('').capitalize + " " + $last_spy_name.join('').capitalize)

    puts "Your offical spy name is #{offical_spy_name}!"

    spy_name_array.push(offical_spy_name)
end

# End ----


# Ending status ----

spy_name_array.each do |name|
  puts "#{name} is going to be an incredible spy!"
end

# End ----
