def recursive_count(num = 0)
  return if num >= 10

  puts num
  recursive_count(num + 1)
end

if __FILE__ == $PROGRAM_NAME
  recursive_count
end

# Problem: 
# Change this while loop into a recursive method
# The method should print numbers 0-9.

# count = 0

# while count < 10
#   puts count
#   count += 1
# end
