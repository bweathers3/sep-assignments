
class MinBinaryHeap

  def initialize
    @heap_array = []
  end

  def insert(title, rating)
    p title, rating
    node = [title, rating]
    @heap_array << node
    check_heap(@heap_array.length - 1)
    p @heap_array
  end

  def find(title)
    @heap_array.each_with_index do |value, index|
      if value[0] == title
        return index
      end
    end
  end

  def delete_it(title)
    to_remove = find(title)
    @heap_array.slice!(to_remove)
    for i in to_remove..@heap_array.length - 1
      check_heap(i)
    end
    p "after delete"
    p @heap_array
  end


  def printf
    @heap_array.each do |value|
      puts "The movie #{value[0]} has a rating of: #{value[1]}"
    end
  end


  private

  def check_heap(index)
    parent_node = (index - 1) / 2
    if parent_node >= 0 && (@heap_array[parent_node][1] > @heap_array[index][1])
      @heap_array[parent_node], @heap_array[index] = @heap_array[index], @heap_array[parent_node]
      check_heap(parent_node)
    end
  end

end



=begin
  min_heap_tree = MinBinaryHeap.new()

  min_heap_tree.insert("The Bourne Supremacy", 81)
  min_heap_tree.insert("The Bourne Legacy", 56)
  min_heap_tree.insert("The Bourne Identity", 83)
  min_heap_tree.insert("The Bourne Ultimatum", 93)
  min_heap_tree.insert("Jason Bourne", 57)
  min_heap_tree.insert("Spectre", 64)
  min_heap_tree.insert("Skyfall", 92)
  min_heap_tree.insert("Quantum of Solace", 65)
  min_heap_tree.insert("Casino Royale", 95)
  min_heap_tree.insert("Die Another Day", 58)
  min_heap_tree.insert("The World is Not Enough", 51)
  min_heap_tree.insert("Tomorrow Never Dies", 61)
  min_heap_tree.insert("GoldenEye", 78)
  min_heap_tree.insert("Licence To Kill", 77)

  min_heap_tree.printf

  min_heap_tree.find("Licence To Kill")

  min_heap_tree.delete_it("Jason Bourne")

  min_heap_tree.printf
=end
