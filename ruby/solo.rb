# Build a "Coffee" class
# This coffee will have 4 attributes:
# Roast: Dark, Light, Decaf
# Sugar: Splenda, Stevia, Raw
# Milk: Non-fat, Whole, Almond
# Ounces: 8-20 oz
# Create an initialize method that makes a cup of coffee using one value for each attribute
#   -prompt the user for all 4 coffee options, assuming the user knows the options.
#   -"deliver" thier coffee by printing a statment with their unique coffee
# Create a method that burns the users mouth when they take their first sip
# Create a method that refills the cup with a certain amount of ounces
#   -ask the user how many ounces they would like to refill their cup
# Create a method for when the user finishes their drink and is ready for their day

class Coffee

  def initialize(roast, sugar, milk, ounces)
    puts "Making your cup of coffee.."
    puts "Here is your coffee!"
    puts "-------------------"
    puts "Roast: #{roast}"
    puts "Sugar: #{sugar}"
    puts "Milk: #{milk}"
    puts "Ounces: #{ounces}"
    puts "-------------------"
    @roast = roast
    @sugar = sugar
    @milk = milk
    @ounces = ounces
  end

  def burns_mouth
    puts "Woww!! That's hot, I just burned my tounge.."
  end

  def refil(ounces)
    puts "Your coffee has been refilled with #{ounces}oz"
  end

  def finish_drink
    puts "All finished and ready for my day!"
  end

  attr_reader :roast, :sugar, :milk, :ounces

end

coffee_list = []
loop do
  puts "Would you like a coffee?"
  wants_coffee = gets.chomp
    if wants_coffee == "no"
      break
    end
  puts "What type of coffee roast would you like? "
  roast = gets.chomp.capitalize!
  puts "Any sugar?"
  sugar = gets.chomp.capitalize!
  puts "Any milk?"
  milk = gets.chomp.capitalize!
  puts "How many ounces would you like?"
  ounces = gets.to_i
  coffee = Coffee.new(roast, sugar, milk, ounces)
  coffee_list << coffee
end

puts "Here is a list of your coffee orders:"
coffee_list.each_with_index do |coffee, index|
  order_number = index + 1
  puts "Coffee Order #{order_number}"
  puts "-------------------"
  puts "Roast: #{coffee.roast}"
  puts "Sugar: #{coffee.sugar}"
  puts "Milk: #{coffee.milk}"
  puts "Ounces: #{coffee.ounces}"
  puts "-------------------"
end
