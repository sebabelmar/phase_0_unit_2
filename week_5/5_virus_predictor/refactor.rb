# U2.W5: Virus Predictor

# I worked on this challenge SOLO.

require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = STATE_DATA[@state][:population_density]
    @region = region
    @next_region = regional_spread
  end

  def virus_effects
    speed = 0.0

    case 
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else 
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    puts "#{@state} will loose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end
end

#=======================================================================

# DRIVER CODE

STATE_DATA.each_key do |state|
  state = VirusPredictor.new(state, STATE_DATA[state][:population], STATE_DATA[state][:region], STATE_DATA[state][:regional_spread])   
  state.virus_effects
end