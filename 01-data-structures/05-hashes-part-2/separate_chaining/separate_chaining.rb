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
        p item
        p "inside def []="
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
          #p load_factor
          #p "need to resize based on load"
      resize
    end
  end

  def [](key)
    bucket = @items[index(key, @size)]
    p "inside def []    key"
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
        p @size
    resized_array = Array.new(@size)
    p "inside def resize"
    @items.each do |item|
      p "@@@@@@@@@@@@@@@@@@"
      if item != nil
        p "@@@@@@@@@@@@@@@@@@"
        current_list = @items[item]
        p current_list

        current_node = current_list.head
        p current_node
        loop do
          break if current_node == nil
          updated_index = index(current_node.key, @size)

            if  resized_array[updated_index] == nil
              new_node = Node.new(key, value)
                p "inside def resize at linkedlist"
              bucket = LinkedList.new
              bucket.add_to_tail(new_node)
              resized_array[updated_index] = bucket
            else
              new_node = Node.new(key, value)
              resized_array[updated_index].add_to_tail(new_node)
            end
        end
      end
      @items = resized_array
    end
  end


end
