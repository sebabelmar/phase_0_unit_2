# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Numbers, integers of any amount fo digits
# Output: String with the number entered separatd by commas.

# Steps:
# DEFINE a method named separate_comma that pass one parameter, num (integer)
# PUSH individualy all digits of the number entered as a parameter into an array.
# To iterate over each digit transform the number into a string then call the method chars and
# finaly push each character into the string using each.
# DEFINE an empty array name it result.
# WHILE loop until the size of the array that contains each digit is less than 3.
# inside the loop push a comma into result and then 3 times pop elements from the array into
# result.
# Outside the loop ADD arr (the remaining digits) to result and join to return a String.
# This will be good for multiples of 10 or just testing format.


# 3. Initial Solution

# def separate_comma(num)
#    arr= []
#    num.to_s.chars.each{|x| arr << x.to_i}
#    result = []

#    while arr.size > 3  do
#       result << ","
#       3.times do
#          result << arr.pop
#       end
#    end
   
#    (arr + result).join

# end

# 4. Refactored Solution
# Refactor to test number equality and format

def separate_comma(num)

   arr= []
   num.to_s.chars.each{|x| arr << x.to_i}
   result = []

   if arr.length <= 3
      arr.join
   elsif arr.length <=6
      fst_three = arr.slice!(-3..-1).join
      return "#{arr.join},#{fst_three}"
   elsif arr.length <=9
      fst_three = arr.slice!(-3..-1).join
      snd_three = arr.slice!(-3..-1).join
      return "#{arr.join},#{snd_three},#{fst_three}"
   end

end

# 1. DRIVER TESTS GO BELOW THIS LINE

# Testing 5, 6 and 8 digits not depending on ramdom numbers 
# Testing number equality and not just formating.

p separate_comma(12380) == "12,380"
p separate_comma(121123) == "121,123" 
p separate_comma(12345567) == "12,345,567" 



# 5. Reflection 

# I started this challenge experimenting with the code. I passed all the tests and I was happy.
# Until I started pseudo code. Verbalizing what I did made me realize that I was getting the format but not the correct
# numbers.
# Then I tested my code and boom. My solution was not solving anything.
# So I refactored, that pretty much was re writing the whole thing.
# Once again, my code, how I solve this problem works for 9 digit numbers or less. Bummer!
# I think creating scenarios is not the way to go. But getting to solve the problems by understanding a generic scenarios
# will fulfill my expectations. 
# Fun challenge, and tricky because the spec was passing. Double gain here. 
# Don't trust just the spec and expand the scenario. Coming soon.
