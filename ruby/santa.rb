class Santa

  def initialize(gender, ethnicity, age)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_amd_cookies(stg)
    puts "That was a good #{stg} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    index = @reindeer_ranking.index(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
    @reindeer_ranking
  end

  attr_reader :age, :ethnicity
  attr_accessor :gender

end

120.times do
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  santa = Santa.new(example_genders.sample, example_ethnicities.sample, rand(140))
  puts "This santa is a #{santa.ethnicity} #{santa.gender} and is #{santa.age} years old!"
end
