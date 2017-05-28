

  def selection_sort(array)
    return nil if array == nil
    return "empty" if array == []
    return array if array.length <= 1

    length = array.length

    for i in 0..length - 2
      min_index = i
      for j in (i + 1)...length
        if array[j] < array[min_index]
          min_index = j
        end
      end

      temp = array[i]
      array[i] = array[min_index]
      array[min_index] = temp
    end
    return array
  end
