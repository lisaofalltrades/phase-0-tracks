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

end

