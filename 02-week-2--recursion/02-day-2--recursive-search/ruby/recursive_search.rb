def recursive_search(arr, target)
  # base cases
  return false if arr.empty?
  return true if arr.first == target
  
  recursive_search(arr[1..-1], target)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: true"
  puts "=>", recursive_search([1, 2, 3], 2)

  puts

  puts "Expecting: false"
  puts "=>", recursive_search([3, 2, 1], 4)
end

# Recursive Search

# Given an Array of values, use recursion to find the target value. 
# Return `true` if found, otherwise `false`.

# ```
# Input: [1, 2, 3], 2
# Output: true

# Input: [3, 2, 1], 4
# Output: false
# ```

# Iterative solution:
# def iterative_search(arr, target)
#   arr.each do |value|
#     return true if value == target
#   end

#   false
# end
