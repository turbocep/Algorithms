#Halve array if its length > 1
  #If length is odd, halve so first half is shorter.
  #You can directly assign the halves to run the recursive function.
#Base case: Array length is 1. 
#The split arrays are passed to the recursive function in order to be split. They are returned, then evaluated.

def merge_sort(array)
  return array if array.length <= 1 #Is this a sufficient base case? I might need another.

  middle_index = array.length / 2

  left = merge_sort(array[0...middle_index])
  right = merge_sort(array[middle_index..-1])

end

