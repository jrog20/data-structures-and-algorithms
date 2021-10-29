require 'set'

def find_first_duplicate(arr)
  uniques = Set.new
  arr.each do |element|
    return element if uniques.include?(element)
    uniques << element
  end
  -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts "------------"

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts "------------"

  puts "Expecting: 7"
  puts "=>", find_first_duplicate([7, 2, 5, 6, 9, 1, 0, 8, 4, 3, 7])
end

# Given an Array, find the first duplicate value that occurs. If there are no duplicates, return -1.

# Please add your pseudocode to this file
# initiate a new Set
# iterate over the array 
  # return the element if the element exists in the set
  # else add the element to the set
# return -1 if no duplicate is found

# And a written explanation of your solution
# A Set is a data structure the contains only unique values
# if I iterate over the array and check if each value is in the Set,
# I can return the first value that exists in the set because that is 
# the first duplicate value.
# If I get to the end of the array and have not found a duplicate,
# return -1.
