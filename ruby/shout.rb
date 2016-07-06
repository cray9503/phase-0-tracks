module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

p Shout.yelling_happily("I'm so happy")
p Shout.yell_angrily("I'm so angry")
