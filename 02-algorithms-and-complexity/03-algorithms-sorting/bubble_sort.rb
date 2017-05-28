
  def bubble_sort(array)
    return nil if array == nil
    return "empty" if array == []
    return array if array.length <= 1

    n = array.length

    begin
      swapped = false
      (n - 1).times do |i|
        if array[i] > array[i + 1]
          temp = array[i]
          array[i] = array[i + 1]
          array[i + 1] = temp
          swapped = true
        end
      end
    end until not swapped
    return array
  end
