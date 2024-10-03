def merge_sort(array)
  return array if array.length <= 1

  middle_index = array.length / 2 #for simpler splitting syntax

  left = merge_sort(array[0...middle_index])
  right = merge_sort(array[middle_index..-1])

  sorted_array = []
  until left.empty? && right.empty? do
    if left.empty?
      sorted_array.concat(right)
      right.clear
    elsif right.empty?
      sorted_array.concat(left)
      left.clear
    elsif left.first < right.first
      sorted_array.push(left.first)
      left.shift
    else
      sorted_array.push(right.first)
      right.shift
    end
  end

  return sorted_array
end

array = []

p merge_sort(array)

#Big issue: How to push individual array elements into sorted_array?
