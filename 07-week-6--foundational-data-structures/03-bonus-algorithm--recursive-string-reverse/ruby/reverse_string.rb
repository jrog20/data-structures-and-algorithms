def reverse_string(str)
  return str if str.length < 2

  return reverse_string(str[1..-1]) + str[0]
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')

  # Don't forget to add your own!
end

# pseudocode to this file
# return string if length is 0 or 1
# return reverse_string(string - 0th character) + 0th character

# written explanation of solution
# Base case => we want to return if the string is empty or length == 1.
