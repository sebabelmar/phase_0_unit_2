
# U2.W6: Create a Car Class from User Stories
# I worked on this challenge together: Sebastian Belmar and Zac Mitton
# 2. Pseudocode

# Methods
#   accelerate (destination speed)
#   drive(how_far)
#   turn(left or right)
#   stop()
#   show_history()
  
# Properties
#   model
#   color
#   distance_to_drive
#   speed
#   distance_driven
#   history
  
# pseudocode steps:
# Define each method on the above list.

# 3. Initial Solution
=begin
  attr_reader :model, :color, :speed, :distance_driven
  attr_accessor :distance_to_drive
  def initialize(model, color, distance_to_drive = 0.0)
    @model = model
    @color = color
    @distance_to_drive = distance_to_drive
    @speed = 0.0
    @distance_driven = 0.0
    @history = []
    @pizza = []
  end
  
  def accelerate(destination_speed)
    @speed = destination_speed
    @history << "accelerated to #{destination_speed}"
  end
  
  def drive(distance)
    @distance_driven += distance
    @history << "drove for #{distance} miles"
  end
  
  def stop
    @speed = 0.0
    @history << "stopped"
  end
  
  def turn(direction)
    @history << "turned #{direction}"
  end
  
  def show_history
    puts "Driving History:\n"
    @history.each{|x| puts x }
  end
  
  def pizza_action(action, pizza_type = nil)
    if action == "store"
      @pizza << pizza_type
    elsif action == "deliver"
      @pizza.shift
    end  
  end
end

=end
# 4. Refactored Solution

class Car
  attr_reader :model, :color, :speed, :distance_driven
  attr_accessor :distance_to_drive
  def initialize(model, color, distance_to_drive = 0.0)
    @model = model
    @color = color
    @distance_to_drive = distance_to_drive
    @speed = 0.0
    @distance_driven = 0.0
    @history = []
    @pizza = []
  end
  
  def accelerate(destination_speed)
    @speed = destination_speed
    @history << "Accelerated to #{destination_speed}"
  end
  
  def drive(distance)
    @distance_driven += distance
    @history << "Drove for #{distance} miles"
  end
  
  def stop
    @speed = 0.0
    @history << "Stopped"
  end
  
  def turn(direction)
    @history << "Turned #{direction}"
  end
  
  def show_history
    puts "Driving History:\n"
    @history.each{|x| puts x }
  end
  
  def pizza_action(action, pizza_type = nil)
    @history << "#{action.capitalize} pizza."
    @pizza << pizza_type if action == "store"
    @pizza.shift if action == "deliver"
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
my_car = Car.new("Toyota", "black")
puts my_car.color  == "black"
puts my_car.model  == "Toyota"
my_car.accelerate(25)
my_car.drive(0.25)
my_car.stop
my_car.turn("right")
my_car.accelerate(35)
my_car.drive(1.5)
puts my_car.speed  == 35
my_car.accelerate(15)
my_car.drive(0.25)
my_car.stop
my_car.turn("left")
my_car.accelerate(35)
my_car.drive(1.4)
my_car.stop
puts my_car.distance_driven  == 3.4
my_car.pizza_action("store", "cheese")
my_car.pizza_action("store", "mushroom")
my_car.pizza_action("store", "sausage")
puts my_car.pizza_action("deliver") == "cheese"
my_car.show_history


# 5. Reflection 
=begin



=end