
def quick_sort(collection)
  return nil if collection == nil
  return "empty" if collection == []
  sort(collection, 0, collection.length - 1)
end

def sort(collection, left_point, right_point)
  if left_point < right_point
    pivot_point = (left_point + ((right_point - left_point) / 2)).to_i
    new_pivot_point = partition(collection, left_point, right_point, pivot_point)
    sort(collection, left_point, new_pivot_point - 1)
    sort(collection, new_pivot_point + 1, right_point)
  end
  return collection
end

def partition(collection, left_point, right_point, pivot_point)
  pivot_point_value = collection[pivot_point]
  collection[pivot_point], collection[right_point] = collection[right_point], collection[pivot_point]
  hold_index = left_point

  (left_point..right_point-1).each do |item|
    if collection[item] < pivot_point_value
      collection[item], collection[hold_index] = collection[hold_index], collection[item]
      hold_index = hold_index + 1
    end
  end

  collection[hold_index], collection[right_point] = collection[right_point], collection[hold_index]
  return hold_index
end

=begin
 def print_quick_sort
   test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
     "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
     "Phil", "Casey", "Caleb", "Neal", "Kirk"]

   puts "This is the unsorted array : #{test_array}"
   puts
   puts
   puts "This is the sorted array : #{quick_sort(test_array)}"
   puts
   puts
 end

 print_quick_sort
=end
