def fibonacci(num)
  last_two = [0, 1]
  return last_two[num] if num < 2

  (num - 1).times do
    sum = last_two[0] + last_two[1]
    last_two = [last_two[1], sum]
  end

  return last_two[1]
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)
end

# Find the nth element in the Fibonacci series. 
# The Fibonacci sequence starts with a 0 followed by a 1. 
# After that, every value is the sum of the two values preceding it. 
# Here are the first seven values as an example: 0, 1, 1, 2, 3, 5, 8.

#########################################################################
# pseudocode

# initiate array = [0, 1]
# (nth - 1) times 
  # Add two digits of array together and assign to variable sum
  # remove first element of array
  # move second element to location of first element
  # move sum to second element of array
# return second element in array

#########################################################################
# written explanation

# The Fibinacci sequence is always the same. The first two digits are 0 and 1.
# So, I could initiate a two-digit array of [0, 1]. 
# I could then add those two digits together to get the next digit.
# I could then remove the first digit of the array, move the 2nd digit to the first space in the array,
# and place the new sum (3rd digit in sequence) to the second place in the two digit array.
# I could then continue this process until the nth - 1 number of times.
# Edge case: if n = 0 or 1, return 0 or 1

#########################################################################
