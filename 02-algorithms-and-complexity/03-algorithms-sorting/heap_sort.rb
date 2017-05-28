

  def heap_sort(keys_array)
    return nil if keys_array == nil
    return "empty" if keys_array == []
    return keys_array if keys_array.length <= 1

    max_heap(keys_array)
    (keys_array.length-1).downto(1) do |item|
      keys_array[0], keys_array[item] = keys_array[item], keys_array[0]
      build_heap(keys_array, item, 0)
    end
    keys_array
  end


private

  def max_heap(keys_array)
    (keys_array.length/2-1).downto(0) do |item|
      build_heap(keys_array, keys_array.length, item)
    end
    keys_array
  end

  def build_heap(keys_array, size, item)
    left = (2*item) + 1
    right = (2*item) + 2

    if left < size && keys_array[left] > keys_array[item]
      largest = left
    else
      largest = item
    end

    if right < size && keys_array[right] > keys_array[largest]
      largest = right
    end

    if (largest != item)
      keys_array[item], keys_array[largest] = keys_array[largest], keys_array[item]
      build_heap(keys_array, size, largest)
    end
  end
