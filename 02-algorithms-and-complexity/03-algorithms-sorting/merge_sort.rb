

  def merge_sort(collection)
    return nil if collection == nil
    return "empty" if collection == []
    return collection if collection.length <= 1

    if collection.length <= 1
      return collection
    else
      mid = (collection.length / 2).floor
      left = merge_sort(collection[0..mid - 1])
      right = merge_sort(collection[mid..collection.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      return [left.first] + merge(left[1..left.length], right)
    else
      return [right.first] + merge(left, right[1..right.length])
    end
  end

=begin
  def print_merge_sort
    test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
      "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
      "Phil", "Casey", "Caleb", "Neal", "Kirk"]

    puts "This is the unsorted array : #{test_array}"
    puts
    puts
    puts "This is the sorted array : #{merge_sort(test_array)}"
    puts
    puts
  end

print_merge_sort
=end
