puts "How many employees will be processed?"
peopleProcessed = gets.to_i

currentEmployee = 0

until peopleProcessed == currentEmployee do

	puts "What is your name?"
	vampireName = gets.chomp

	puts "What's your age?"
	age = gets.to_i

	puts "What year were you born?"
	year = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	likesGarlicBread = gets.chomp

	puts "Would you like to enroll in the company’s health insurance?"
	isInsured = gets.chomp


	# Chaning all strings to boolean values ------

	if isInsured == "yes"
	  isInsured = true
	elsif isInsured == "no"
	  isInsured = false
	end

	if age == 2016 - year
	  ageIsRight = true
	else
	  ageIsRight = false
	end

	if likesGarlicBread == "yes"
	  likesGarlicBread = true
	elsif likesGarlicBread == "no"
	  likesGarlicBread = false
	end

	vampireName = ( vampireName == ("Drake Cula" || "Tu Fang")) ? true : false


	# End boolean --------



	# Creating variables for more readable code -----

	ageIsWrong = !ageIsRight
	hatesGarlicBread = !likesGarlicBread
	isNotInsured = !isInsured

	# End readable varibales -------



	# Conditions to screen employees -----

	puts "Please name any allergies you have, one at a time. (If you don't have any, just type 'done'."
employeeAllergy = gets.chomp

	if employeeAllergy == "sunshine"
		puts "Probably a vampire"
	end

	until employeeAllergy == "sunshine" || employeeAllergy == "done" do
		puts "What else?"
		employeeAllergy = gets.chomp
		if employeeAllergy == "sunshine"
			puts "Probably a vampire"
		end
	end

	if vampireName == true
		puts "Definitely a vampire"
	elsif ageIsRight && (likesGarlicBread || isInsured)
		puts "Probably not a vampire"
	elsif ageIsWrong && hatesGarlicBread && isNotInsured
		puts "Almost certainly a vampire"
	elsif ageIsWrong && (hatesGarlicBread || isNotInsured)
		puts "Probably a vampire"
	else
		puts "Results inconclusive"
	end



	# End conditions -----

	currentEmployee += 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
