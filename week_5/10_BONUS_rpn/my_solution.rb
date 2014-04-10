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

# well understanting of how the pollish calculator works.
# case clear understanding on building solution while iterating.
# I think that is a really clever way to structure my mind. My tendency is to have blocks of solutions as result 
# and finally operate over thos block to have  a solution.