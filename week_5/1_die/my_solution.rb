# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: Sebastian Belmar & Eoin McMillan].

# 2. Pseudocode

# Input: 6 sides of the dice, allocated by die = Die.new(6). An 8-sided die would be Die.new(8)
# Output: A random number selected from one of the sides of the die.
# Steps: 
# create class Die
# define a method to create a die and allocate the number of sides
# define a method to check if "sides" is a valid number (>= 1)
# define a method to simulate a roll of the die. .sample is a great ruby method to get the job done since it is non-destructive and will select a random output object from an array.


# 3. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides <= 0
        raise ArgumentError.new("Only positive numbers are allowed")
    elsif @sides % 1 != 0 
        raise ArgumentError.new("Only intigers are allowed - get yer scurvey lovin floats outta here!")
    elsif @sides.class.to_s == "String"
        raise ArgumentError.new("Only intigers are allowed - no strings")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    (1..@sides).to_a.sample
  end
end

# 4. Refactored Solution
#We are happy that we can't refactor either more legibly or more efficiently.

# 1. DRIVER TESTS GO BELOW THIS LINE

six_sided_die = Die.new(6)

p six_sided_die.sides == 6 # Testing that is returnig the correct number of sides
p (1..6).include?(six_sided_die.roll) == true #we're checking to see that the number returned is a number within the side range we have input for the argument

almost_infinite_die = Die.new(999999) # We are checking that ramdom rolls are working 

roll_1 = almost_infinite_die.roll
roll_2 = almost_infinite_die.roll
roll_3 = almost_infinite_die.roll

if roll_1 == roll_2 && roll_2 == roll_3 
    puts false
  else
  	puts true
end
# okokok, we know we cheated, and it is theoretically possible to pass this test, but everything else would throw an argument error and not let us run our tests, so this was our best attempt at a 3rd test that would still be acceptable.

# 5. Reflection 
#We learnt about class methods. Class methods have to start with a capital letter. 
#We used @instance_variables (@things), the advantage is that it allows us to refer to the same thing many times inside of a class, without being restricted to being within a single function.
#We wrote untestable code; because we raised an error during our code (to catch user input error), we couldn't actually test against those errors using driver tests (rspec still works). Not sure how to avoid this...

#Eoin: Sebastian had some really creative solutions to some of our problems. E.g. (1..6).include?(six_sided_die.roll) - that was succinct
#Eoin: First experience using .sample, as I had previously used a .shuffle on last week's randomizer challenge.

#Seba: Eoin wrote an understandable and technical pseudocode, easy to translate into code.
#Seba: I learned a new way to write DRIVER TEST.