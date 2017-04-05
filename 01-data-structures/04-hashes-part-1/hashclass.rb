class HashClass

  def initialize(size)
    @items = Array.new(size)
    @size = size
  end

  def []=(key, value)
    p key, value
    stored_item = @items[index(key, @size)]

    if stored_item == nil  ## when @items[index] has nil value
      @items[index(key, @size)] = HashItem.new(key, value)

    elsif ( stored_item.value != value  && stored_item.key == key )
      ## when new value is different but keys are same; must resize
      resize
      stored_item.value = value

    elsif ( stored_item.key != key ) ## keys are different;
        resize
        new_index = index(key, @size)
    end
    self[key] = value
  end


  def [](key)
    p "inside [] #{key}"
    if @items[index(key, @size)] != nil && @items[index(key, @size)].key == key
      @items[index(key, @size)].value
    end
  end

  def resize
    @size = @size * 2
    resized_array = Array.new(@size)
    p "resized array #{resized_array.length}"

    @items.each do |item|
      p item
      if item != nil
        resized_array[index(item.key, @size)] = item
      end
    end
    @items = resized_array
    p "resized items array #{@items.length}"
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    p "index: #{key.sum % size}"
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    p @size
    @size
  end

end


test = HashClass.new(6)
test.size
test.index("The Lord of the Rings: The Fellowship of the Ring", 6)
test.index("test", 6)
test.resize
test.size

#test.[](6)


movies = HashClass.new(30)
movies["A New Hope"] = "Average"
movies["Empire Strikes Back"] = "Excellent"
movies["Return of the Jedi"] = "The Best"
#movies.resize
#=end
