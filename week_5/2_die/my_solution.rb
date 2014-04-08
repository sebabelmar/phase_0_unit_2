# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge SOLO

# 2. Pseudocode

# Input: An Array of strings
# Output: One ramdom element selected from the String.
# Steps:
# Define labels as a parameter when initializing.
# Define labels as an instance variable.
# Raise and error when labels is empty.
# define method sides that returns labels size
# define method roll that return a ramdom sample from labels


# 3. Initial Solution

class Die

  def initialize(labels)
    @labels = labels    
    raise ArgumentError.new("Come on!! put something in that ARRAY!") if labels.empty?
  end
  
  def sides
    @labels.size
  end
  
  def roll
    @labels.sample
  end

end



# 4. Refactored Solution
# I think my code is understandable and simple.






# 1. DRIVER TESTS GO BELOW THIS LINE

test_arr = ["Sedona","Santiago","Buenos Aires","Sao Paulo","San Francisco","San Luis","DC","Portland","Tuba","NYC"]
ten_letters_dice = Die.new(test_arr)
p ten_letters_dice.sides == 10 # testing dice size realted to the array
p test_arr.include?(ten_letters_dice.roll) == true # Testing to see that the element returned is an element within the array inputed.
p Die.instance_method(:initialize).arity == 1





# 5. Reflection 
# It was fun to recreate this dice and adapt it to an array with strings in it.
# Im having problems translating RSPEC into Driver Tests because I haven't find the
# way to check others things after rising an error.
# I'm getting confortable with classes and @variables. There is a lot to learn.