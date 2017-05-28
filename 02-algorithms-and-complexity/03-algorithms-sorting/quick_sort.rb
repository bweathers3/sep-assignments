
def quick_sort(array)
  return nil if array == nil
  return "empty" if array == []
  sort(array, 0, array.length - 1)
end

def sort(array, left_point, right_point)
  if left_point < right_point
    pivot_point = (left_point + ((right_point - left_point) / 2)).to_i
    new_pivot_point = partition(array, left_point, right_point, pivot_point)
    sort(array, left_point, new_pivot_point - 1)
    sort(array, new_pivot_point + 1, right_point)
  end
  return array
end

def partition(array, left_point, right_point, pivot_point)
  pivot_point_value = array[pivot_point]
  array[pivot_point], array[right_point] = array[right_point], array[pivot_point]
  hold_index = left_point

  (left_point..right_point-1).each do |item|
    if array[item] < pivot_point_value
      array[item], array[hold_index] = array[hold_index], array[item]
      hold_index = hold_index + 1
    end
  end

  array[hold_index], array[right_point] = array[right_point], array[hold_index]
  return hold_index
end
