# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    #alphabet =  # Turns the range from a to z into an array
    cipher = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.rotate(4))] # Creates a Hash with keys each element on Alphabet
                                                    # and (zip it) and values to each key equal to 
                                                    # alphabet shift it 4 index to the right.
    spaces = ["@", "#", "$", "%", "^", "&", "*"]    # Array of some characters.
    
    sentence.downcase! # Because we set up the cipher to work only with downcase letters
                       # this line turns the parameter into all downcase letters/ Changes to modify source
    encoded_sentence = "" # Empty array that it will hold the result thrugh iterations/ changed to STRING

    sentence.each_char do |element| #iterates over each character of the sentence including spaces
                                             # passes each characte into a block of code as the variable element
      if cipher.include?(element) # If whith conditional that retuns true if element is included in the hash as a key.
        encoded_sentence << cipher[element] # Pushes the "translation" the value on the hash of the element key 
      elsif element == ' ' # if the element is a space
        encoded_sentence << spaces.sample # pushes a sample of the array spaces. one of any of them.
      else # all the other characters
        encoded_sentence << element # push them into the solution array the element how it is.
      end
     end
  
    return encoded_sentence # Returns the solutoin array converted to an array/ Changed to return the STRING
end


# Questions:
# 1. What is the .to_a method doing?
#  The method to_a turns an object into an array.
# 2. How does the rotate method work? What does it work on?
# The method rotate replace the value of each index of an array for the value x time to the rigth.
# keeping the array at the same size of the original and replacing index -1 for 1.
# 3. What is `each_char` doing?
# The method each_char iterates over each character of an string and pass that element as a parameter into a block
# 4. What does `sample` do?
# The method sample, replicates one random value contained in an array.
# 5. Are there any other methods you want to understand better?
# The method .include? seems to be searching for a coincidence along the keys of a hash. But I'm not clear.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# Look better, with Eiko we thought to experiment with the code in order to optimize how to generate the hash.
# Which this code shows that. Plus we wanted to iterate just one time but we didn't think about calling
# the method include? over a hash. That could helped us.
# now in comparision this code does not deal with numbers which for the exmaple we are working on,
# is an incompleted program. If I could refactor this code I would zip the space characters into the hash.
# 7. Is this good code? What makes it good? What makes it bad?
# This code seems to be good code, it uses appropiate methods. Is understadable, meaning its variables are well
# define. I make it work just on strings so it goes straight from the input to the output without
# holdign the result in an array and then joining that array back. Doing what I mention before might
# mean that the code was makin something bad. Or defining alphabet instead of using ("a".."z").to_a
# each time we need it can be easy to undestand but slower.
# The user interface thar this code generates is nos friendly and it doesn't interact. That could be a 
# nice thing to add.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time? No because we set up the spaces like any of those 7 charaters
# therefore it can different code but meaning the same in English.

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("abc efg hij")
p translate_to_cipher("1000") # here is the problem compared to the code on challenge #5.




# 5. Reflection 

