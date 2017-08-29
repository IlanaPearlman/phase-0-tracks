# Virus Predictor
# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative - it allows the use of the contents of
# another ruby file, if it not in the same folder then the path must be inclued. Require allows the use of standard ruby modules.
#
require_relative 'state_data'
class VirusPredictor

  #initialize information for one state as a VirusPredictor object
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #calls two private methods that predict deaths and speed of spread
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  #predicts deaths
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

  # speed of spread also predicted on population density
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

STATE_DATA.keys.sort.each do |current_state|
  #initialize object
  virus_state_object = VirusPredictor.new(current_state, STATE_DATA[current_state][:population_density], STATE_DATA[current_state][:population])
  #call virus effects on that object
  virus_state_object.virus_effects
end

=begin
STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
=end

=begin
 # initialize VirusPredictor for each state
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
#=======================================================================
# Reflection Section
=end