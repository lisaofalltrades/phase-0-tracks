module Shout
	def self.yell_angrily(words)
    words + "!!!" + " :("
  	end

  	def self.yell_happily(words)
    words + "!!!" + " :)"
  	end
end

# p Shout.yell_angrily("AHHHH, I HATE EVERYONE")
# p Shout.yell_happily("AHHHH, I LOVE EVERYONE")

class Football_crowd
	include Shout
end

class Football_cheerleader
	include Shout
end

Football_crowd = Football_crowd.new
p football_crowd.yell_angrily("THAT'S A FOUL!!!")
p football_crowd.yell_happily("TOUCHDOWN!!!")

Football_cheerleader = Football_cheerleader.new
p football_cheerleader.yell_angrily("M-I-S-S. THAT'S WHAT YOU CALL A MISS!!!")
p football_cheerleader.yell_happily("PUMP! PUMP! PUMP IT UP!!!!")