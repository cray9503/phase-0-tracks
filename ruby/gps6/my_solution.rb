# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#require_relative 'state_data'

class VirusPredictor
  # Creates a new instance and sets the arguments equal to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls two methods at once

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicts deaths based on population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # predicting the speed of population spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each_key do |state|
  current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density],    STATE_DATA[state][:population])
  current_state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   -The state key is a string and uses a hash rocket, and the other keys are symbols and use colons
#
# What does require_relative do? How is it different from require?
#   -It requires a relative link to a file to be used
#
# What are some ways to iterate through a hash?
#   - .each is a great way to iterate though a hash
#   - .each_key is useful as well if you just want to iterate through they keys
#
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   -They are instance variables so they can be accessed anywhere in the class; therefore,
#   the parameters are unnecessary
#
# What concept did you most solidify in this challenge?
#   -I found picking out the small issues and refactoring to be the most difficult.
#   It's easy to understand once you find them but I struggled to recognize it sometimes.
