class HashClass

  def initialize(size)
    @items = Array.new(size)
    p @items
    @size = size
  end

  def []=(key, value)
  end


  def [](key)
  end

  def resize
    @size = @size * 2
    resized_array = Array.new(@size)
    p resized_array

    @items.each do |item|
      if item != nil
        resized_array[index(item.key, @size)] = item
      end
    end
    p @item
    p resized_array
    @item = resized_array
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    p key
    p key.sum
    p key.sum % size
    key.sum % size
    #p "ord"
    #p key
    #p key.ord
    #p key.ord % size
  end

  # Simple method to return the number of items in the hash
  def size
    p @size
    @size
  end

end


=begin
test = HashClass.new(6)

test.size

test.index("The Lord of the Rings: The Fellowship of the Ring", 6)

test.index("test", 6)

test.resize

test.size

=end

movies = HashClass.new(30)
movies["A New Hope"] = "Average"
movies["Empire Strikes Back"] = "Excellent"
movies["Return of the Jedi"] = "The Best"
movies.resize
