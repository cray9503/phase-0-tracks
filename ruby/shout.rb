# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end
#
# p Shout.yelling_happily("I'm so happy")
# p Shout.yell_angrily("I'm so angry")

module Shout
  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

class Boy
  include Shout
end

class Girl
  include Shout
end

boy = Boy.new
p boy.yelling_happily("Hello")

girl = Girl.new
p girl.yelling_happily("Hello")
