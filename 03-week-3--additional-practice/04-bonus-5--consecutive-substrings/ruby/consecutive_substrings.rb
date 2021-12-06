def consecutive_substrings(string)
  substring = []

  string.split('').each_with_index do |char, idx|
    substring << char
    fragment = char

    string[idx + 1..-1].split('').each_with_index do |letter|
      fragment += letter
      substring << fragment
    end
  end
  substring
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']"
  print "=> " 
  print consecutive_substrings('abc')

  puts

  puts "Expecting: ['a']"
  print "=> " 
  print consecutive_substrings('a')
end

# The problem: Consecutive Substrings
# Given a string, return all consecutive substrings within that string
# consisting of at least one character. Substrings should be returned 
# in the order in which they appear.

# Notes:
# 1) In the string 'abc', 'ac' is not a consecutive substring.
# 2) The input string will have a length of 0 or more.

# explanation of solution
# We want to iterate through the array, capturing all possible substrings.
# We can initialize an empty array to push all the possible substrings into.
# We encounter the first character and push that onto the empty array. We also store
# that character in a variable. Each time we iterate through the string, we add
# one more element to the variable, and push the variable onto the array,
# until we reach the end of the string. We then start this process again, at the next index.

# pseudocode
# ##########################
# initialize an empty array called substrings
# iterate over the string:
#   push character onto substrings
#   initialize variable called fragment and store character in it

#   iterate over the string starting one index ahead
#     add character to fragment
#     push fragment onto substring
# return substring
# ##########################

