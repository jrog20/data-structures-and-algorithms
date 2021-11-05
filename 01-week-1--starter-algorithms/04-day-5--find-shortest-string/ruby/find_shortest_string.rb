def find_shortest_string(array)
  # shortest = array[0]
  # array.each do |string|
  #   if string.length < shortest.length
  #     shortest = string
  #   end
  # end
  # return shortest

  array.reduce do |shortest, string| 
    string.length < shortest.length ? string : shortest
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

end

# The problem:
# Given an Array of strings, return the shortest string. 
# If there is more than one string of that length, 
# return the string that comes first in the list. 
# The Array will have a minimum length of 1.

# pseudocode:
# shortest = first string
# iterate over the array of strings
  # if the current string is < shortest
  # shortest = current string
# return shortest

# explanation:
# If we store the first string in a variable, we can then
# compare each subsequent string length to the first. If it is shorter,
# we can replace the variable with the new shortest string.
