# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge SOLO.

# 2. Pseudocode

# Input: We are going to INPUT an integer when initializing the class GessingGame and when calling the method guess.
# Output: Depending if we call guess or solved? method we are going to get low, correct or high for the first case and true or false
# for the second method.

# Steps:
# DEFINE class GuessingGame.
# DEFINE method initialize that pass one parameter, answare and in the body turns that answare to a instace variable.
# DEFINE method that accept one parameter number and returns hight, correct or low depending to the result when comparing it to answare.
# DEFINE method solved? that returns true when @number == to @answer and false otherwise.

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(number)
  	@number = number
 	
	 	if @number == @answer
	 		:correct
	 	elsif @number > @answer
	 		:high
	 	elsif @number < @answer
	 		:low
	 	end	
	end			

  def solved?
  	return true if @number == @answer
  	return false if @number != @answer
  end
  
end


# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(number)
  	@number = number
    
    case
	 	when @number == @answer
	 		:correct
	 	when @number > @answer
	 		:high
	 	else
	 		:low
	 	end	
	end			

  def solved?
  	@number == @answer ? true : false
  end
  
end




# 1. DRIVER TESTS GO BELOW THIS LINE

p GuessingGame.instance_method(:initialize).arity == 1

game = GuessingGame.new(10)

p game.guess(5) == :low
p game.solved? == false

p game.guess(10) == :correct
p game.solved? == true


# 5. Reflection

# Ok finally I followed the instructions in order and it was easier and faster to write the code. 
# After translating a few test it was pretty clear what the challange was asking to build.
# I didnt find any challenging logic but it was nice to practice using instance variables and refactoring.
# Nested Ternary Operators when creating boolean will be the way to go from now.
