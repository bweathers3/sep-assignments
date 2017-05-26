

  def insertion_sort(collection)
    return nil if collection == nil
    return "empty" if collection == []
    return collection if collection.length <= 1

    sorted_collection = [collection.delete_at(0)]

    for val in collection
      sorted_collection_index = 0
      while sorted_collection_index < sorted_collection.length
        if val <= sorted_collection[sorted_collection_index]
          sorted_collection.insert(sorted_collection_index, val)
          break
        elsif sorted_collection_index == sorted_collection.length - 1
          sorted_collection.insert(sorted_collection_index + 1, val)
          break
        end
        sorted_collection_index += 1
      end
    end
    return sorted_collection
  end

=begin
  def print_insertion_sort
    test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
      "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
      "Phil", "Casey", "Caleb", "Neal", "Kirk"]

    puts "This is the unsorted array : #{test_array}"
    puts
    puts
    puts "This is the sorted array : #{insertion_sort(test_array)}"
    puts
    puts
  end

print_insertion_sort
=end
