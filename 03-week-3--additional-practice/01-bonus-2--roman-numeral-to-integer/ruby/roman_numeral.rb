def roman_numeral(string)
  romans = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
    IV: 4,
    IX: 9,
    XL: 40,
    XC: 90,
    CD: 400,
    CM: 900,
  }

  total = 0
  idx = 0

  while idx < string.length
    two_char = (string[idx] + (string[idx + 1] || '')).to_sym

    if !romans[two_char].nil?
      total += romans[two_char]
      idx += 2
    else
      total += romans[string[idx].to_sym]
      idx += 1
    end
  end

  total
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 1"
  puts roman_numeral('I')

  puts

  puts "Expecting: 9"
  puts roman_numeral('IX')

  puts

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  puts

  puts "Expecting: 999"
  puts roman_numeral('CMXCIX')

  puts

  puts "Expecting: 2550"
  puts roman_numeral('MMDL')
end

# The problem: Roman Numeral to Integer
# Convert the provided Roman numeral (a String) to an Integer. 
# For more information on Roman numerals, please go to [Math Is Fun]
# (https://www.mathsisfun.com/roman-numerals.html).

# The String input will always consist of uppercase letters with a 
# minimum length of 1. We will only be covering numbers below 4000, 
# so you can safely ignore the "Really Big Numbers" section on the 
# Math is Fun page we linked to.

# pseudocode
# store unique Roman numerals in a hash called romans
# initiate total = 0
# iterate over the string
  # if the current character + the next character is a key in romans
    # add the value of that key to the total
    # skip over the next character
  # else 
    # get the value of the first character
    # add the value to the total
# return total 

# explanation of solution
# We can store the unique Roman numerals in a hash (key-value pairs), including
# those where the small Roman numeral comes before the larger Roman numeral (e.g. 'IX').
# The maximum digits for a special Roman numeral combination that cannot simply be added is two. 
# i.e. IV == 4 (not 6), IX == 9 (not 11)
# So, when we iterate over the string, 
# we first check if the current character plus the next character is a key in the Object. 
# If it is, we add the value associated with that key to the total. 
# We'll then need to increment our index in the string by 2. This takes care
# of those numerals where the small number comes before the big one. If the two characters
# together aren't a key, we add the value at the single-character key to the total and
# increment the index by one.
