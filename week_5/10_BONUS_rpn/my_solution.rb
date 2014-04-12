# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge with: Zac Mitton.

# 2. Pseudocode

# Input: String of numbers and 3 possible simbols.
# Output: Integer that is the result of a polish notation calculation.

# Steps:
# Inside the body of the class RPNCalculator
# DEFINE a method evaluate that allows one paramter named input
# RAISE an argument error if input class is not a String
# DEFINE a variable named stack equal to an empty array.
# ITERATE using each over input converted to an Array separated by spaces, passing to a block each element of the array.
# Inside the each block loop the case element.
# When element is a number push it into stack
# When element is + - * operate the last two elements respecting it order.
# Else raise an error that says that the user has enter an invalid character.
# RETURN the value ramaining in stack as an integer.


# 3. Initial Solution

class RPNCalculator
  def initialize()
  end
    
  def evaluate (input)
    raise ArgumentError.new("input must be a string") unless input.class.to_s == "String"
    stack = []
    answer = ""
      
    input.split(" ").each{ |x|
      case x
      when /[0-9]/
      then stack << x
      when "+"
      then stack << (stack.pop.to_i + stack.pop.to_i)
      when "*"
      then stack << (stack.pop.to_i * stack.pop.to_i)
      when "-"
      then stack << (-1*(stack.pop.to_i - stack.pop.to_i))
      else
          answer = "input contains bad characters"
          break
      end
    }
    answer = stack[0].to_i
  end
end


# 4. Refactored Solution

class RPNCalculator
  def evaluate (input)

    raise ArgumentError.new("input must be a string") unless input.class.to_s == "String"
    stack = []

    input.split(" ").each do |element|
      case element
      when /[0-9]/
        stack << element
      when "+"
        stack << (stack.pop.to_i + stack.pop.to_i)
      when "*"
        stack << (stack.pop.to_i * stack.pop.to_i)
      when "-"
        stack << (-1*(stack.pop.to_i - stack.pop.to_i))
      else
        raise ArgumentError.new("input contains invalid characters")
      end
    end

    stack[0].to_i

  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

calc = RPNCalculator.new

p calc.evaluate("-1") == -1
p calc.evaluate('1 2 + 3 4 + *') == 21

begin
    calc_2 = RPNCalculator.new
    calc_2.evaluate("1 2 % 5 +")
rescue ArgumentError => err
    fail = err.message
end
p fail == "input contains invalid characters"


# 5. Reflection 

# I worked with Zaz Mitton on this challenge. The fact that Zac is attending DBC in Chicago and we met on our GPS makes DBC's experience
# tremendoulsy amaizing for me.
# When we start this challenge I thought that I rememeber how to use pollish notation because the HP 12c, which is the mos popular calculator
# in the finance world. Well I use a TI so Zac showed lot more knowladge on that part of the challenge.
# One really usefull thig that I got out by working with Zac was for the second time, solve problems when iterating.
# I have a mindset of getting something that I'll use later to operate a solution. But Zac solves on the go and I think that that is some
# thing that I need to master.
# I thought this challenge will take us a long time to solve but it wasn't. We wrote some small Pseudo and jumped straight to the code.