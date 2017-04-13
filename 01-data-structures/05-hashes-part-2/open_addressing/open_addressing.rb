require_relative 'node'

class OpenAddressing

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)
    @size = size
    @load_factor_count = 0
  end

  def []=(key, value)
    new_index = index(key, @size)
    if @items[new_index] == nil
      #p "item == nil, the key = #{key} and the value = #{value}"
      @items[new_index] = Node.new(key, value)

    elsif @items[new_index].key == key && @items[new_index].value == value
      #p "item.key == key && item.value == value, the key = #{key} and the value = #{value}"
      @items[new_index].value = value

    elsif @items[new_index].key != key && @items[new_index].key != nil
      #p "@items[new_index].key != key && @items[new_index].key != nil, the key = #{key} and the value = #{value}"
      resize
      next_new_index = index(key, @size)
      self[key] = value

    elsif @items[new_index].key == key && @items[new_index].value != value
      #p "item.key == key && item.value != value, the key = #{key} and the value = #{value}"
      next_new_index = next_open_index(new_index)
      if next_new_index == -1
        resize
        next_new_index = index(key, @size)
        self[key] = value
      else
        @items[next_new_index] = value
      end
    end
    #@load_factor_count = @load_factor_count + 1

   #if load_factor > @max_load_factor
    #   resize
   #end
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
    for i in index..size - 1
      if @items[i] == nil
        return i
      else
        no_empthy_index = -1
      end
    end

    for i in 0..index
      if @items[i] == nil
        return i
      else
        no_empthy_index = -1
        return no_empthy_index
      end
    end

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
end
