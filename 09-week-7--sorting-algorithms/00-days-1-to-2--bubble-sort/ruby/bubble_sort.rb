# Bubble Sort

# Bubble sort sorts a list in place. 
# It does not create a new array. 
# Instead, it modifies the Array that was passed to the function as an argument.

# In order to get in-place sorting, bubble sort swaps elements when they are in 
# the incorrect order. When no swaps occur, the Array is considered sorted. 

# This algorithm iterates over an Array repeatedly until it is sorted. 
# If the input Array is already sorted, it only iterates once because no swaps occur.

# Written Explanation #
# Since we need to repeatedly iterate over the array until it's sorted, we need
# to track if it's sorted, so we can initialize a Boolean to false to do that.
# Next we need to use a while loop (or something similar) that runs until the Array
# is sorted. This allows us to iterate over the Array as many times as needed.
# Since we want to set sorted to false only if a swap happens, we'll set it to true
# before iterating over the Array. When we iterate over the Array, we always go
# over the whole thing. We compare the value we're iterating over to the next one, 
# and if the first one is more than the next one, we swap them. We also set sorted
# to false because of the swap. We'll eventually get to a point where there are no
# swaps and at that point, sorted will remain true and when the iteration ends,
# we'll exit the outer loop and return the Array.

# Big O for time complexity is O(n^2) quadratic time because of the loop within a loop. 
# In the worst case we'll end up going over the whole Array roughly once per element.

# Pseudocode #
# initialize boolean sorted to false
#
# while sorted is false:
#   sorted = true
#   iterate over array with index tracking:
#     if current element is larger than next element:
#       swap those elements in place
#       sorted = false
#
# return input array

def bubble_sort(arr)
  sorted = false

  until sorted
    sorted = true

    arr.each_with_index do |num, idx|
      break if idx == arr.length - 1

      if num > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        sorted = false
      end
    end
  end

  arr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [1, 2, 3, 4]"
  print "=> "
  print bubble_sort([3, 2, 1, 4])

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print bubble_sort([1, 2, 3])

  puts

  puts "Expecting: []"
  print "=> "
  print bubble_sort([])

  puts

  puts "Expecting: [1, 2, 3]"
  print "=> "
  print bubble_sort([2, 3, 1])
end

