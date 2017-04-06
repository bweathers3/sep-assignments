class HashClass

  def initialize(size)
    @items = Array.new(size)
    @size = size
  end

  def []=(key, value)
    if  @items[index(key, @size)] == nil
      @items[index(key, @size)] = HashItem.new(key, value)
    elsif ( @items[index(key, @size)].key != key )
      resize
      self[key] = value
    elsif ( @items[index(key, @size)].value != value  && @items[index(key, @size)].key == key )
      resize
      @items[index(key, @size)].value = value
    end
  end



  def [](key)
    if @items[index(key, @size)] != nil && @items[index(key, @size)].key == key
      @items[index(key, @size)].value
    end
  end

  def resize
    @size = @size * 2
    resized_array = Array.new(@size)
    @items.each do |item|
      if item != nil
        resized_array[index(item.key, @size)] = item
      end
    end
    @items = resized_array
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
    key.sum % size
  end

  # Simple method to return the number of items in the hash
  def size
    @size
  end

end
