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
    new_node = Node.new(key, value)
    if  @items[item] == nil
      bucket = LinkedList.new
      bucket.add_to_tail(new_node)
      @items[item] = bucket
    else
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
        current_node = item.head
        loop do
          break if current_node == nil
          updated_index = index(current_node.key, @size)
          new_node = Node.new(current_node.key, current_node.value)
            if  resized_array[updated_index] == nil
              bucket = LinkedList.new
              bucket.add_to_tail(new_node)
              resized_array[updated_index] = bucket
            elsif
            resized_array[updated_index].add_to_tail(new_node)
            end
            current_node = current_node.next
        end
      end
      @items = resized_array
    end
  end

  def items_print
    puts
    puts "This is the seperate chaining hashes"
    puts
    puts "The Load Factor is:     #{load_factor.round(4)}"
    puts
    puts "The Hash:"

    @items.each do |print_item|
      if print_item != nil
        pointer = print_item.head
        loop do
          break if pointer == nil
          puts "The Hash Key:   #{pointer.key}, with a value of:   #{pointer.value}"
          pointer = pointer.next
        end
      end
    end
  end
end
