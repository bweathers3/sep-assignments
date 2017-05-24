

  def binary_search_iterative(collection, search_value)
    low = 0
    high = collection.length-1

    while low <= high
      mid = low + ((high - low) / 2)
        if collection[mid] == search_value
          return mid
        elsif collection[mid] < search_value
          low = mid + 1
        else
          high = mid - 1
        end
    end
    return "The search value was not found in the collection"
  end



  search_value_letter = "r"

  array_a = ["a", "b", "c", "d", "e", "f", "r", "s", "w", "x", "z"]

  puts "The value #{search_value_letter} was found in the array #{array_a} at the #{binary_search_iterative(array_a, search_value_letter)} position"
