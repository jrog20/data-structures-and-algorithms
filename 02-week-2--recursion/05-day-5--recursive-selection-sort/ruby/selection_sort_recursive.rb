def selection_sort_recursive(arr)
  return [] if arr.length == 0

  min = arr.min
  idx = arr.index(min)
  arr.delete_at(idx)

  sorted = selection_sort_recursive(arr)
  sorted.unshift(min)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort_recursive([3, -1, 5, 2])

  puts
end

# The problem: Selection Sort
# Sort an Array of numbers using selection sort. 
# The selection sort algorithm sorts an array by 
# repeatedly finding the minimum element (lowest value) 
# in the input Array, and then putting it at the correct 
# location in the sorted Array.

# explanation
# base case: array == 0
# call recursive sort function on array, pushing the
# result of min each time on the front of the array, since
# the recursive call will unwind at the last call which will 
# be the largest value in the original array

# def selection_sort(arr)
#   sorted = []
#   # iterate through the entire array to find the minimum element
#   # push the minimum element onto the new sorted array
#   # delete the element at the minimum element index 
#   # repeat until the array is empty
#   until arr.length == 0
#     min = arr.min
#     idx = arr.index(min)
#     sorted << min
#     arr.delete_at(idx)
#   end
#   sorted
# end