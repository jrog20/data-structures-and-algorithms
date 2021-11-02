def selection_sort(arr)
  sorted = []
  until arr.length == 0
    min = arr.min
    minIndex = arr.index(min)
    sorted << min
    arr.delete_at(minIndex)
  end
  sorted
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }
end

# Sort an Array of numbers using selection sort. 
# The selection sort algorithm sorts an array by repeatedly finding 
# the minimum element (lowest value) in the input Array, 
# and then putting it at the correct location in the sorted Array.

# ```
# Input: [3, -1, 5, 2]
# Output: [-1, 2, 3, 5]
# ```

# pseudocode
# initiate an empty output array
# for the length of the array
  # find the minimum value by storing the value in a variable min
  # remove minimum value from the input array
  # push min onto the sorted output array
# return the sorted array


# explanation
# I can iterate over the initial array, finding the minimum value, 
# remove it from the initial array and add it to a new array. I can 
# continue this process until the initial array is empty. I then have a 
# new array with the values sorted.
