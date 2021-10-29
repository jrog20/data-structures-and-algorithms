def reverse_string(str)
  reversed = ""
  str.chars.each do |char|
    reversed = char + reversed
  end
  reversed
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')
end

# Please add your pseudocode to this file
# initialize reversed as an empty string
# iterate over each character in the string:
  # input the character in front of the previous characters and store in reversed
# return reversed

# And a written explanation of your solution
# initialize a variable as an empty string. 
# iterate over the string, adding each character in front
# of the previous character.