
require_relative 'node'
require_relative 'linked_list'


	def add_film_hash
		@film_actors_guild_array = []
		movie = Hash.new
  	@people = Array.new

  	movie["Footloose"] = [ "Kevin Bacon", "Sarah Jessica Parker", "Chris Penn", "Lori Singer", "John Lithgow", "Dianne Wiest"]
  	movie["RIPD"] = [ "Kevin Bacon", "Jeff Bridges", "Ryan Reynolds", "Mary-Louise Parker" ]
  	movie["Shrek"] = [ "Mike Myers", "Eddie Murphy", "John Lithgow"]
  	movie["Shrek2"] = [ "Mike Myers", "Eddie Murphy"]
		movie["Did You Hear About the Morgans"] = [ "Sarah Jessica Parker","Hugh Grant", "Sam Elliott"]
		movie["Barnyard"] = [ "Sam Elliott", "Kevin James", "Courteney Cox", "Danny Glover"]
  	movie["The Big Picture"] = [ "Kevin Bacon", "John Cleese"]
		movie["Iron Man"] = [ "Jeff Bridges", "Robert Downey Jr", "Terrence Howard", "Gwyneth Paltrow" ]
		movie["Jurassic Park: The Lost World"] = [ "Julianne Moore", "Jeff Goldblum", "Pete Postlethwaite", "Arliss Howard" ]
		movie["Moneyball"] = [ "Chris Pratt", "Brad Pitt", "Jonah Hill", "Philip Seymour Hoffman" ]
		movie["Apollo 13"] = [ "Kevin Bacon", "Tom Hanks", "Bill Paxton", "Gary Sinise" ]
		movie["Boogie Nights"] = [ "Julianne Moore", "Mark Wahlberg", "Burt Reynolds", "Heather Graham" ]
		movie["The Devil Wears Prada"] = [ "Emily Blunt", "Anne Hathaway", "Meryl Streep", "Stanley Tucci" ]
		movie["The Way of the Gun"] = [ "Benicio Del Toro", "Ryan Phillippe", "Juliette Lewis", "Taye Diggs" ]
		movie["Magnolia"] = [ "Julianne Moore", "Tom Cruise", "William H Macy", "Philip Seymour Hoffman" ]
  	movie["Edge of Tomorrow"] = [ "Tom Cruise", "Emily Blunt", "Bill Paxton", "Brenden Gleeson" ]
		movie["Star Wars: Episode IV - A New Hope"] = [ "Mark Hamill", "Harrison Ford", "Carrie Fisher", "Peter Cushing" ]
		movie["Oblivion"] = [ "Tom Cruise", "Morgan Freeman", "Olga Kurylenko", "Melissa Leo" ]
		movie["Savages"] = [ "Benicio Del Toro", "Taylor Kitsch", "Blake Lively", "John Travolta" ]
  	movie["Flatliners"] = [ "Kevin Bacon", "Kiefer Sutherland", "Julia Roberts", "William Baldwin" ]
		movie["Guardians of the Galaxy"] = [ "Benicio Del Toro", "Chris Pratt", "Zoe Saldana", "Dave Bautista" ]
  	movie["Jurassic World"] = [ "Chris Pratt", "Bryce Dallas Howard", "Vincent D'Onofio", "Ty Simpkins" ]
		movie["Lego Movie"] = [ "Chris Pratt", "Will Ferrell", "Elizabeth Banks", "Will Arnett" ]
		movie["Magnolia"] = [ "Julianne Moore", "Tom Cruise", "William H Macy", "Philip Seymour Hoffman" ]
		movie["Mission: Impossible - Rogue Nation"] = [ "Tom Cruise", "Jeremy Renner", "Simon Pegg", "Rebecca Ferguson" ]
		movie["Sicario"] = [ "Emily Blunt", "Benicio Del Toro", "Josh Brolin" ]
		movie["The Big Lebowski"] = [ "Jeff Bridges", "John Goodman", "Julianne Moore", "Steve Buscemi" ]
		movie["The Girl on the Train"] = [ "Emily Blunt", "Rebecca Ferguson", "Haley Bennett", "Juston Theroux" ]
		movie["True Grit"] = [ "Jeff Bridges", "Matt Damon", "Josh Brolin", "Hailee Steinfield" ]

		film_actors_guild(movie)

		movie.each do |film, cast|
			cast.each do |person|
				item = @film_actors_guild_array.index(person)
				new_node = Node.new(film, cast)
				if  @people[item] == nil
      		bucket = LinkedList.new
      		bucket.add_to_tail(new_node)
      		@people[item] = bucket
    		else
      		@people[item].add_to_tail(new_node)
    		end
			end
		end
  	return @people
	end

	private

	def film_actors_guild(movie)
		movie.each do |film, cast|
    	cast.each do |item|
      	@film_actors_guild_array.push(item)
			end
				@film_actors_guild_array = @film_actors_guild_array.uniq
  	end
		return @film_actors_guild_array
	end
