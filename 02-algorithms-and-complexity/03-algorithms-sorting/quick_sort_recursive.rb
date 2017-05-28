
def quick_sort_recursive(array)
  return nil if array == nil
  return array if array.length <= 1

  pivot = array.pop
  leftArray = []
  rightArray = []

  while(array.length > 0) do
    nextValue = array.pop
    if(nextValue < pivot)
      leftArray << nextValue
    else
      rightArray << nextValue
    end
  end
  return quick_sort_recursive(leftArray) + [pivot] + quick_sort_recursive(rightArray)
end
