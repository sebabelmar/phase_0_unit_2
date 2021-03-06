# U2.W6: Drawer Debugger


# I worked on this challenge SOLO


# 2. Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class? I didnt add more mothods but adit the ones that ware crated before

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item(item)
		@contents << item if item.clean
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing? pop is extracting the last element of the array modifieng it.
		@contents.delete(item)
	end

	def dump  # what should this method return? an array and an empty drawer
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:" 
		@contents.each {|silverware| puts "- " + silverware.type } if contents != []
		puts "Nothing it was dumped" if contents == []
	end

end

class Silverware
	attr_reader :type, :clean

# Are there any more methods needed in this class? Yes I added a method call clean_silverware

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		@clean = true
	end
end

knife1 = Silverware.new("knife")
fork = Silverware.new("fork")
spoon = Silverware.new("spoon")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(fork) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware # ADDED Method

silverware_drawer.view_contents
silverware_drawer.dump # ADDDED @contents = []
silverware_drawer.view_contents #What should this return? ADDDED Conditional to return empty after dump

silverware_drawer.add_item(fork) # ADDED line to add_item fork to the drawer after damping
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code... I had an empty drawer
fork.eat

silverware_drawer.add_item(fork) # it shoud not add forks because they are dirty
silverware_drawer.add_item(spoon)
silverware_drawer.add_item(knife1)
silverware_drawer.view_contents

fork.clean_silverware
silverware_drawer.add_item(fork)

silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents

silverware_drawer.remove_item(sharp_knife)
sharp_knife.eat
silverware_drawer.add_item(sharp_knife)
silverware_drawer.view_contents #should not include sharp_knife because it's dirty

#BONUS SECTION
puts fork.clean # ADDED clean to attr_reader on the class Silverware

# DRIVER TESTS GO BELOW THIS LINE

def assert
  raise "Assertion failed!" unless yield
end

assert{fork.type == "fork"}
assert{spoon.type == "spoon"}

assert{spoon.clean == true}
assert{knife1.clean == true}
assert{sharp_knife.clean == false}


# 5. Reflection 
=begin
This challenge was lot more complicated than I thought. I was told that the directions of it weren't clear and I kind of forgot.
Now that I’m reflecting on it I remembered that my friend was actually right.
Any how I got a really good practice on understanding classes and it attr_reader Writer and accesor.
It was fun to decipher how to work with classes and use its attributes from other ones. 
I had a hard time trying to understand the logic of this program and I got a little ambitious on trying to write a fun
logic to play around with them. Finally I gave up because I didn’t get the results that I was expecting and I spent too much time on it.
I learned a lot out of this challenge, but I would like to have better directions. Maybe I should have read more about
how to access to classes data from a outside of them or call them from an other class.
=end







