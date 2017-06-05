
# This method takes n arrays as input and combine them in sorted ascending  order
def best_written_ruby(*arrays)
  combined_array = arrays.map { |item| item }
  combined_array.flatten!.sort!
end

=begin
input_array1 = [1, 7, 0, 3, 6, 2, 4]
input_array2 = [77, 56, 34, 2, 17]
input_array3 = [34, 12, 67, 45, 99, 1000334, 5, 14]

poorly_written_ruby(input_array1, input_array2, input_array3)
=end
