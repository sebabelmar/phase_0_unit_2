# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin
- Define class song attr_reader :name :artist
- Define class play list that take multimple variables as atributes when initialize 
and cerates a hush
 -- define method add that takes a song and adds it to the the hush
 -- define method remove that deletes the song from the list passing one parameter
 -- define a method that returns a boolean value if song its included on list or not
 -- define a method num_of_truck that returns the amount of songd on the list
 -- define a method play all that returns all the songs
 -- define a method display that shows all songs meta data.
=end


# Initial Solution

# class Song
# 	attr_reader :title, :artist
# 	def initialize(title, artist)
# 		@title = title
# 		@artist = artist
# 	end

# 	def play
# 		puts "Play: #{@title} from #{artist}"
# 	end

# end

# class Playlist < Song
# 	attr_reader :songs, :tracks
# 	def initialize(*songs)
# 		@songs = songs
# 		@tracks = {}
# 		songs.each do |song|
# 		@tracks[song.artist] = song.title
# 		end
# 	end

# 	def add (*songs)
# 		songs.each do |song|
# 		@tracks[song.artist] = song.title
# 		end
# 	end

# 	def num_of_tracks
# 		@tracks.size
# 	end

# 	def remove song
# 		@tracks.delete_if {|k, v| v == song.title}
# 	end

# 	def includes? song
# 		@tracks.has_value?(song.title)
# 	end

# 	def play_all
# 		@songs.each do |song|
# 		song.play
# 		end
# 	end

# 	def display
# 		puts "This are your TUNES:"
# 		@tracks.each {|artist, title| puts "#{artist} - #{title}"}
# 	end

# end	


# Refactored Solution

class Song
	attr_reader :title, :artist

	def initialize(title, artist)
		@title = title
		@artist = artist
	end

	def play
		puts "Play: #{@title} from #{artist}"
	end
end

class Playlist < Song
	def initialize(*songs)
		@songs = songs
		@tracks = {}
		songs.each {|song| @tracks[song.artist] = song.title}
	end

	def add (*songs)
		songs.each {|song| @tracks[song.artist] = song.title}
	end

	def num_of_tracks
		@tracks.size
	end

	def remove song
		@tracks.delete_if {|artist, title| title == song.title}
	end

	def includes? song
		@tracks.has_value?(song.title)
	end

	def play_all
		@songs.each {|song| song.play}
	end

	def display
		puts "This are your TUNES:"
		@tracks.each {|artist, title| puts "#{artist} - #{title}"}
	end
end	




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under) 

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)

p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display


# Reflection 
=begin
THE CHALLENGE OF THE WEEK.
Yes! I learned a lot, but it I had to pay for it. I felt that "I’m not good at this at all!!".
But I went away from my computer, and relax. I brought positive thought into my mind by playing the guitar and talking to my wife.
After that boom, the child class was born.
I not clear enough of how to use data that was save in an other class from an specific class. I really need to understand how to
create those classes webs in other to build simple but useful programs with DRYness in mind.
I tried to come up with a more interesting play method, but I think what I wrote was good.
I like the fact that I was able to write something that it worked and then refactor it in a nice way.
Not paring for a challenging exercise was great. Not saying that I don’t like to pair but I enjoyed my solo time.
I learned that there are some times that initializing by using attr can become vital.
And in other point it might be unnecessary.
=end