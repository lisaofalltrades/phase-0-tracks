# Virus Predictor

# I worked on this challenge with Robert Gervais.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#require_relative links another ruby file required to make the first work. the first one uses code from the linked ruby file
#require vs require_relative: require is a simplier method
#require is simplier and is used to access something in your ruby library
require_relative 'state_data'

class VirusPredictor
#starts up new instance of virus detector
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calling predicted deaths and speed of deaths
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
#calculates predicted deaths with pop density and population then prints results
  def predicted_deaths(population_density, population, state)
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
#calculates speed of spread with pop density & prints results
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
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

#loop through state data
STATE_DATA.each do |state, state_info|
  roger = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  roger.virus_effects
end

#=======================================================================
=begin Reflection Section
1. What are the differences between the two different hash syntaxes shown in the state_data file?
This is a deeply nested hash.

2. What does require_relative do? How is it different from require?
-require_relative links another ruby file required to make the first work. the first one uses code from the linked ruby file
-require vs require_relative: require is a simplier method
-require is simplier and is used to access something in your ruby library

3. What are some ways to iterate through a hash?
hash.each_pair
hash.each
hash.each_key
hash.each_value

4. When refactoring virus_effects, what stood out to you about the variables, if anything?
-As a pair, we decided that virus_effects did not need to be refactored.

What concept did you most solidify in this challenge?
  Accessing a hash within a hash!!
=end