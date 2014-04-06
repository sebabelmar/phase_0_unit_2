# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 5 parameters as strings.
# Output: An essay writen with strings and the parameters.
# Steps:
# Define a method and name it essay_writer which passes 5 strings paramters: title, topic, date, thesis_statement, pronoun
# Define a variblae that takes the last name of topic.
# Difine a hash that turns female, male, place and thing into pronouns.
# Write an if that when the pronoun relates to a person it us a "whom" connector else a "which" one.
# Define a variable = to a template that use variables and paramaters interpolating 
# inside the "essay".


# 3. Initial Solution

def essay_writer(title, topic, date, thesis_statment, pronoun)

  last_name = topic.split[1]
  p_nouns = {"male" => "he", "female" => "she", "place" => "it", "thing" => "it"}

  if p_nouns[pronoun] == "he" || p_nouns[pronoun] == "she"
  	connector = "whom" 
   else
  	connector = "which"
  end
  
  template = 
  "#{title}.

  Today I'm going to talk about #{topic}, #{connector} amaze the world in #{date}.
  #{p_nouns[pronoun].capitalize} #{thesis_statment}.
  I highly recommend my class mates to visit The #{last_name} Museum."

end

first_assey  = essay_writer("Beautiful Sedona", "Sedona City", 1902, "was founded close to Oak Creek Canyon", "place")
second_assey  = essay_writer("The Great President", "Nelson Mandela", 1940, "lead a nation to freedom", "male")
third_assey  = essay_writer("The Amazing Eiffel Tower", "The Eiffel Tower", 1923, "was built in Paris, France", "thing")


# 4. Refactored Solution

# This code was written having my essay template in mind. Any refactoring here will be realted to
# a change in that template. I preffer to leave my code like it is and review how my cohort mates
# solve this challenge.


# 1. DRIVER TESTS GO BELOW THIS LINE
  
puts first_assey 
puts second_assey
puts third_assey 

# 5. Reflection 
# # I think I’m trap in writing code to solve an specific problem. Kind of cerating a calculator that
# returns only the result of 2 + 2. I need to get out of there.
# I know this will come with time, experience and desire. This will come by pairing and reading others code.
# All that said, this challenge putted me face to face with that side I'm working on. Made me practice and
# the most valuable thing for me, it made me reflect on it.
# There are some loose ends in my code, but it's something that I'll consciously work on the following weeks.