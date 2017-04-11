require_relative 'linked_list'

class SeparateChaining
  attr_reader :max_load_factor

  def initialize(size)
    @max_load_factor = 0.7
    @items = Array.new(size)
    @size = size
    @load_factor_count = 0
  end

  def []=(key, value)
    item = index(key, @size)
    if  @items[item] == nil
      new_node = Node.new(key, value)
      bucket = LinkedList.new
      bucket.add_to_tail(new_node)
      @items[item] = bucket
    else
      new_node = Node.new(key, value)
      @items[item].add_to_tail(new_node)
    end

    @load_factor_count = @load_factor_count + 1

    if load_factor > @max_load_factor
        resize
    end
  end

  def [](key)
    bucket = @items[index(key, @size)]
    if bucket != nil
      pointer = bucket.head
      loop do
        break if pointer == nil
          if pointer.key == key
            return pointer.value
          end
          pointer = pointer.next
      end
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
    @load_factor_count.to_f / @size.to_f
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
        current_list = item
        current_node = current_list.head

        loop do
          break if current_node == nil
          updated_index = index(current_node.key, @size)

            if  resized_array[updated_index] == nil
              key = current_node.key
              value = current_node.value
              new_node = Node.new(key, value)
              bucket = LinkedList.new
              bucket.add_to_tail(new_node)
              resized_array[updated_index] = bucket
            elsif
              key = current_node.key
              value = current_node.value
              new_node = Node.new(key, value)
              resized_array[updated_index].add_to_tail(new_node)
            end
            current_node = current_node.next
        end

      end
      @items = resized_array

    end

  end


end


=begin
test = SeparateChaining.new(6)
p test.size
p test.index("The Lord of the Rings: The Fellowship of the Ring", 6)

p test.index("test", 6)
test.resize
p "after resize"
p test.size

#test[](6)

=end
=begin
movies = SeparateChaining.new(6)
p movies["A New Hope"] = "Average"
p movies["Empire Strikes Back"] = "Excellent"
p movies["Return of the Jedi"] = "The Best"
movies.resize
p move

=end
