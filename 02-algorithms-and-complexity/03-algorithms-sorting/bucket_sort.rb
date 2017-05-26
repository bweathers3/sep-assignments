
require_relative 'insertion_sort'

def bucket_sort(collection)
  return nil if collection == nil
  return "empty" if collection == []
  return collection if collection.length <= 1

  collection_A, collection_B, collection_C = [], [], []
  split = (collection.length / 3).to_i
  collection_A = collection[(0..split)]
  collection_B = collection[(split+1..split*2)]
  collection_C = collection[((split*2)+1..collection.length-1)]

  collection_A = insertion_sort(collection_A)
  collection_B = insertion_sort(collection_B)
  collection_C = insertion_sort(collection_C)

  return collection = insertion_sort(collection_A + collection_B + collection_C)
end

=begin
def print_bucket_sort
  test_array = ["Mike", "Sally", "Bill", "Chad", "Christina", "Sue", "Elizabeth", "Ann",
    "Richard", "Andy", "Michael", "Sam", "Tina", "Mallory", "Tim", "David", "Bob", "Kim", "Jim",
    "Phil", "Casey", "Caleb", "Neal", "Kirk"]

  puts "This is the unsorted array : #{test_array}"
  puts
  puts
  puts "This is the sorted array : #{bucket_sort(test_array)}"
  puts
  puts
end

print_bucket_sort
=end
