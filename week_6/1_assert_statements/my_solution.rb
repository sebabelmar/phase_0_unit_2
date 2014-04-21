# U2.W6: Testing Assert Statements

# I worked on this challenge SOLO


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
-- Let's work with the defined method assert that raises an error if the result of 
a block is false
-- Defined the variable name as a String with a specific value
-- Passed the block on line 12 to the method assert, because the conditional is true assert
does not raises an error
-- Pass the block on line 13 to the method assert this time it raises an error because the 
conditional is false
=end


# 3. Copy your selected challenge here

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


# 4. Convert your driver test code from that challenge into Assert Statements

def assert_1
  raise "Invalid argument" unless yield
end

def assert_2
  raise "Wrong Calculation" unless yield
end

calc = RPNCalculator.new

assert_1 {RPNCalculator.instance_method(:evaluate).arity == 1}
assert_2 {calc.evaluate('1 2 3 4 + + +') == (1 + 2 + 3 + 4)}
assert_2 {calc.evaluate('1 2 + 3 4 + *') == ((2 + 1) * (4 + 3))}
assert_2 {calc.evaluate('20 10 5 4 + * -') == (20 - 10*(5 + 4))}
assert_2 {calc.evaluate('2 2 *') == (2 * 2)}
assert_2 {calc.evaluate('-1') == -1}


# 5. Reflection
=begin
This new way to write Test is lot more professional looking, convenient and clear. Because it's raises and error and prints it only 
when there is a bug in the code in comparison to true or false printed no matter what.
It was fun to go through my own code and get to translate Rspec test into Assert Statements.
I need to write a post blog about the different methods of testing code so I can stick all difference in my head an picture them out.
I didn’t have any difficulties understanding this new topic. But I bet there are lot of details pending to discovery.
=end