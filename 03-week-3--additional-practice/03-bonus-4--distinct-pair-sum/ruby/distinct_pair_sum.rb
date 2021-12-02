def distinct_pair_sum(arr, k)
  pairs = {}
 # iterate over array up to second to last item
  (0...(arr.length - 1)).each do |idx|
    next_value = arr[idx + 1]
    # if current item and next item are not keys in pairs and they sum to k
    if next_value + arr[idx] == k && 
      !pairs.key?(next_value) && 
      !pairs.key?(arr[idx])
      # add current item as key in pairs with value of [current item, next item]
      pairs[arr[idx]] = [arr[idx], next_value]
    end
  end
  pairs.values
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)
end

# pseudocode 
# initialize empty hash called pairs
 
#  iterate over array up to second to last item:
#   if current item and next item are not keys in pairs and they sum to k:
#     add current item as key in pairs with value of [current item, next item]
 
#  return values stored in pairs

# explanation of solution
#  Objects only allow keys with unique values. If we iterate over the array, and on 
#  each iteration, check if the current value and next value add up to k, we can then
#  check if either of those values is a key in pairs. If neither is a key in pairs, we
#  add the current element being iterated over as the key and the pair as the value. 
#  When the iteration is over, we return the values from pairs.

# the problem: Distinct Pair Sum
# Given an input Array and a target value `k`, 
# return all distinct pairs of consecutive numbers 
# that add up to `k`. A pair is distinct if no other pair 
# contains the same numbers. The order of the pairs and 
# order of the values in each pair does not matter