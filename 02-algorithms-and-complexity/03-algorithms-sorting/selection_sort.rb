

  def selection_sort(collection)
    return nil if collection == nil
    return "empty" if collection == []
    return collection if collection.length <= 1

    length = collection.length

    for i in 0..length - 2
      min_index = i
      for j in (i + 1)...length
        if collection[j] < collection[min_index]
          min_index = j
        end
      end

      temp = collection[i]
      collection[i] = collection[min_index]
      collection[min_index] = temp
    end
    return collection
  end

=begin
  def print_selection_sort
    test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
      "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
      "Phil", "Casey", "Caleb", "Neal", "Kirk"]

    puts "This is the unsorted array : #{test_array}"
    puts
    puts
    puts "This is the sorted array : #{selection_sort(test_array)}"
    puts
    puts
  end

 print_selection_sort
=end
