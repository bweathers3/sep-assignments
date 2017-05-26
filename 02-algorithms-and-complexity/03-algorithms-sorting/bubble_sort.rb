

  def bubble_sort(collection)
    return nil if collection == nil
    return "empty" if collection == []
    return collection if collection.length <= 1

    n = collection.length

    begin
      swapped = false
      (n - 1).times do |i|
        if collection[i] > collection[i + 1]
          temp = collection[i]
          collection[i] = collection[i + 1]
          collection[i + 1] = temp
          swapped = true
        end
      end
    end until not swapped
    return collection
  end

=begin
  def print_bubble_sort
    test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
      "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
      "Phil", "Casey", "Caleb", "Neal", "Kirk"]

    puts "This is the unsorted array : #{test_array}"
    puts
    puts
    puts "This is the sorted array : #{bubble_sort(test_array)}"
    puts
    puts
  end

  print_bubble_sort
=end
