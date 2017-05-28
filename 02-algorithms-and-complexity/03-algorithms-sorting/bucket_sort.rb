
require_relative 'insertion_sort'

def bucket_sort(array)
  return nil if array == nil
  return "empty" if array == []
  return array if array.length <= 1

  array_A, array_B, array_C = [], [], []
  split = (array.length / 3).to_i
  array_A = array[(0..split)]
  array_B = array[(split+1..split*2)]
  array_C = array[((split*2)+1..array.length-1)]

  array_A = insertion_sort(array_A)
  array_B = insertion_sort(array_B)
  array_C = insertion_sort(array_C)

  return array = insertion_sort(array_A + array_B + array_C)
end
