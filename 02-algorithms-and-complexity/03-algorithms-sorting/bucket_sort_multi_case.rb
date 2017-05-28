
require_relative 'insertion_sort'
require_relative 'bubble_sort'
require_relative 'heap_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'

def bucket_sort(array, switch_no)
  return nil if array == nil
  return "empty" if array == []
  return array if array.length <= 1

  array_A, array_B, array_C = [], [], []
  split = (array.length / 3).to_i
  array_A = array[(0..split)]
  array_B = array[(split+1..split*2)]
  array_C = array[((split*2)+1..array.length-1)]

  case switch_no
  when 1
    array_A = insertion_sort(array_A)
    array_B = insertion_sort(array_B)
    array_C = insertion_sort(array_C)
    return array = insertion_sort(array_A + array_B + array_C)
  when 2
    array_A = bubble_sort(array_A)
    array_B = bubble_sort(array_B)
    array_C = bubble_sort(array_C)
    return array = bubble_sort(array_A + array_B + array_C)
  when 3
    array_A = heap_sort(array_A)
    array_B = heap_sort(array_B)
    array_C = heap_sort(array_C)
    return array = heap_sort(array_A + array_B + array_C)
  when 4
    array_A = merge_sort(array_A)
    array_B = merge_sort(array_B)
    array_C = merge_sort(array_C)
    return array = merge_sort(array_A + array_B + array_C)
  when 5
    array_A = quick_sort(array_A)
    array_B = quick_sort(array_B)
    array_C = quick_sort(array_C)
    return array = quick_sort(array_A + array_B + array_C)
  else
    puts "Problem"
  end
end
