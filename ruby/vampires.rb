puts "What is your name?"
vam_name = gets.chomp

puts "What's your age?"
age = gets.to_i

puts "What year were you born?"
year = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance?"
health = gets.chomp

if vam_name == "Drake Cula"
  vam_name = true
elsif vam_name == "Tu Fang"
	vam_name = true
else
  vam_name = false
end

if health == "yes"
  health = true
elsif health == "no"
  health = false
end

if age == 2016 - year
  vamp_age = true
else
  vamp_age = false
end

if garlic == "yes"
  garlic = true
elsif garlic == "no"
  garlic = false
end

if vam_name == true
  puts "Definitely a vampire"
elsif (garlic && vamp_age) || health  == true
  puts "Probably not a vampire"
elsif !(garlic && vamp_age) || !health == true
  puts "Probably a vampire"
elsif !(garlic && vamp_age) && !health == true
  puts "Almost certainly a vampire"
else
  puts "Results inconclusive"
end
