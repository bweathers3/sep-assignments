require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)

  end

  def []=(key, value)

    @items[index(key,@size)] = HashItem.new(key, value)
    p @items[index(key,@size)]

  end

  def [](key)
    if ( @items[index(key, @size)] != nil && @items[index(key, @size)].key == key )
      @items[index(key, @size)].value = value
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Calculate the current load factor
  def load_factor
  end

  # Simple method to return the number of items in the hash
  def size
    @size
  end

  # Resize the hash
  def resize
  end
end

=begin
star_wars_movies = SeparateChaining.new(6)

p star_wars_movies

star_wars_movies.[]=("Star Wars: The Phantom Menace", "Number One")
#star_wars_movies.["Star Wars: Attack of the Clones"]= "Number Two"
#star_wars_movies.["Star Wars: Revenge of the Sith"]= "Number Three"
#star_wars_movies.["Star Wars: A New Hope"]= "Number Four"
#star_wars_movies.["Star Wars: The Empire Strikes Back"]= "Number Five"
#star_wars_movies.["Star Wars: Return of the Jedi"]= "Number Six"
=end
