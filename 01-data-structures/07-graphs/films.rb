
def add_film_hash
	@film_actors_guild_array = []
	movie = Hash.new
  film_actor_hash = Hash.new

  movie["Footloose"] = [ "Kevin Bacon", "Sarah Jessica Parker", "Chris Penn", "Lori Singer", "John Lithgow", "Dianne Wiest"]
  movie["RIPD"] = [ "Kevin Bacon", "Jeff Bridges", "Ryan Reynolds", "Mary-Louise Parker" ]
  movie["Shrek"] = [ "Mike Myers", "Eddie Murphy", "John Lithgow"]
  movie["Shrek2"] = [ "Mike Myers", "Eddie Murphy"]
	movie["Did You Hear About the Morgans"] = [ "Sarah Jessica Parker","Hugh Grant", "Sam Elliott"]
#=begin
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
#=end

	movie.each do |film, cast|
    cast.each do |item|
      if film_actor_hash[item] == nil
        film_actor_hash[item] = []
      end
      hold = cast
  		hold -= [item]
			hold.each do |person|
      	film_actor_hash[item].push(person)
			end
			film_actor_hash[item] = film_actor_hash[item].uniq
    end
  end

=begin
	film_actor_hash.each do |key, item|
		p key
		p item
		p "**********"
		p "**********"
	end
=end
	film_actors_guild(movie)
  return film_actor_hash
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



#add_film_hash
