class Puppy

  def initialize
  	puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

   def speak(number)
  	number.times do |eachtime|
  		puts "Woof"
  	end
  end
  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_age)
  	human_age * 7
  end

  def stay(seconds)
  	seconds.times do |second|
  		puts "Waited #{second + 1} seconds.."
  	end
  end
end

