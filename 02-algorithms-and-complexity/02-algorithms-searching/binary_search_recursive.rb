

  def binary_search_recursive(collection, search_value)
    low = 0
    high = collection.length-1
    mid = low + ((high - low) / 2)

      if collection[mid] == search_value
        return mid
      elsif collection[mid] < search_value
        binary_search_recursive(collection.slice(mid+1..high), search_value)
      else
        binary_search_recursive(collection.slice(low..mid-1), search_value)
      end
  end



  search_value_letter = "c"

  array_a = ["a", "b", "c", "d", "e", "f", "r", "s", "w", "x", "z"]

  puts "The value #{search_value_letter} was found in the array #{array_a} in the final Recursive position of #{binary_search_recursive(array_a, search_value_letter)}"
