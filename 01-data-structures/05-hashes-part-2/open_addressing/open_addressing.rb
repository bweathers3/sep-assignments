require_relative 'node'

class OpenAddressing

  def initialize(size)
    @items = Array.new(size)
    @size = size
    @max_load_factor = 1.0
    @load_factor_count = 0
  end

  def []=(key, value)
    new_index = index(key, @size)
    if @items[new_index] == nil
      @items[new_index] = Node.new(key, value)
    elsif @items[new_index].key == key && @items[new_index].value == value
      return
    elsif  @items[new_index].key == key && @items[new_index].value != value
      next_new_index = next_open_index(new_index)
      if next_new_index == -1
        resize
        index_after_resize = index(key, @size)
        @items[index_after_resize].value = value
      else
        @items[next_new_index] = Node.new(key, value)
      end
    elsif @items[new_index].key != key
      while @items[index(key, @size)].key != key && @items[index(key, @size)].key != nil
        resize
        index_after_resize = index(key, @size)
        break if @items[index_after_resize] == nil
      end
      self[key] = value
    else
      p "We have hit an unplanned situation"
    end
    @load_factor_count = @load_factor_count + 1
  end

  def [](key)
    new_index = index(key, @size)
    if @items[new_index] != nil && @items[new_index].key == key
      @items[new_index].value
    end
  end

  # Returns a unique, deterministically reproducible index into an array
  # We are hashing based on strings, let's use the ascii value of each string as
  # a starting point.
  def index(key, size)
   key.sum % size
  end

  # Given an index, find the next open index in @items
  def next_open_index(index)
    for i in index..@size - 1
      if @items[i] == nil
        p i
        return i
      end
    end
    for i in 0..index-1
      if @items[i] == nil
        p 1
        return i
      end
    end
    return -1
  end

  # Simple method to return the number of items in the hash
  def size
    @size
  end

  # Resize the hash
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

  # Calculate the current load factor
  def load_factor
    @load_factor_count.to_f / @size.to_f
  end

  def items_print
    puts
    puts "This is the open_addressing hashes"
    puts "The Load Factor is:     #{load_factor.round(4)}"
    puts "The Hash:"
    puts
    @items.each do |print_item|
     if print_item != nil
       p "The Key:   #{print_item.key}, With a value:     #{print_item.value}"
     end
    end
    puts
  end

end
