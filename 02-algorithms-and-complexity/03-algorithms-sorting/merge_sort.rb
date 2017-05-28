
  def merge_sort(array)
    return nil if array == nil
    return "empty" if array == []
    return array if array.length <= 1

    if array.length <= 1
      return array
    else
      mid = (array.length / 2).floor
      left = merge_sort(array[0..mid - 1])
      right = merge_sort(array[mid..array.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    if left.empty?
      return right
    elsif right.empty?
      return left
    elsif left.first < right.first
      return [left.first] + merge(left[1..left.length], right)
    else
      return [right.first] + merge(left, right[1..right.length])
    end
  end
