# U2.W5: Virus Predictor

# I worked on this challenge SOLO.

# EXPLANATION OF require_relative
# Requiere_relative complements our builtin method buy allowing us to acces to, in this case, a hash
# that lives in the file state_data.
# In this case we are going to require this file and use keys and values from a hash and pass that as parameter to
# the class method virus_effect of the class VirusPredictor.
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
    # When initializing this class each parameter is turned to an intance variable making them available inside the clas.
  end

  def virus_effects  #What is the SCOPE of instance variables, an instance variable can ve used all over the class
    predicted_deaths(@population_density, @population, @state) # but not out of it. It's Scope are methods on side the class.
    speed_of_spread(@population_density, @state)
    # This method call the privet methods. It can be used from out side the class. Is the only method that can
    # be used to perform the prediction and calculate the speed.
  end

   
  private # All methods bellow privet can not be called from out side the class. In side the class they can be
  # used by other methods and performe whatever block of code was written in them.

  def predicted_deaths(population_density, population, state)
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
    # This method creates 5 scenarios related to density and predicts number of deaths by multiplying a factor times population.
    # It returns a String with the name of the states and number of deaths estimted.
  end

  def speed_of_spread(population_density, state) #in months
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
  # This method returns a string with the calculates number of months that the virus will take to spread state wide.
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects