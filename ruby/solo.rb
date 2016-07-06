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
#   -ask the user how many ounces they would like to refil their cup
# Create a method for when the user finishs their drink and is ready for their day

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

end

puts "What type of coffee roast would you like?"
roast = gets.chomp
puts "Any sugar?"
sugar = gets.chomp
puts "Any milk?"
milk = gets.chomp
puts "How many ounces would you like?"
ounces = gets.to_i

Coffee.new(roast, sugar, milk, ounces)
