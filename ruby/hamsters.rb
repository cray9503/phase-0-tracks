puts "What's the hamster's name?"
hamster_name = gets.chomp

puts "How loud is the hamster from 1 to 10?"
hamster_volume = gets.to_i

puts "What is the color of the fur?"
hamster_fur = gets.chomp

puts "Is the hamster a good candidate for adoption (true/false)?"
hamster_adoption = gets.chomp
if hamster_adoption == "true"
  hamster_adoption = true
elsif hamster_adoption == "false"
  hamster_adoption = false
else hamster_adoption = nil
end

puts "What is the estimated age of the hamster?"
hamster_age = gets.to_i

if hamster_age == ""
	hamster_age = nil
end

puts "Your hamster's name is #{hamster_name}, it is a level #{hamster_volume} in volume, it's fur is #{hamster_fur}. Do we think he is a good candidate for adoption, #{hamster_adoption}. The estimated age of this hamster is #{hamster_age}"
