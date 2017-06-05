

# This method takes n arrays as input and combine them in sorted ascending  order
def better_written_ruby(*arrays)
  combined_array = arrays.map { |item| item }
  combined_array.flatten!
  sorted_array = [combined_array.pop]
  sorted_items = sorted_array.length

  for val in combined_array
    i = 0
    while i < sorted_items
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_items - 1
        sorted_array.insert(i, val)
        break
      end
      i+=1
    end
  end
  sorted_array
end

=begin
input_array1 = [1, 7, 0, 3, 6, 2, 4]
input_array2 = [77, 56, 34, 2, 17]
input_array3 = [34, 12, 67, 45, 99, 1000334, 5, 14]

poorly_written_ruby(input_array1, input_array2, input_array3)
=end
