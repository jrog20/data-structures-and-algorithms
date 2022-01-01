function reverseString(str) {
  if (str.length < 2) {
    return str;
  } 
  return reverseString(str.slice(1)) + str[0];
}

if (require.main === module) {
  console.log("Expecting: 'ih'");
  console.log("=>", reverseString('ih'));

  console.log("");

  console.log("Expecting: 'ybabtac'");
  console.log("=>", reverseString('catbaby'));

  console.log("");

  console.log("Expecting: 'empty string'");
  console.log("=>", reverseString(''));

  console.log("");

  console.log("Expecting: 'esor'");
  console.log("=>", reverseString('rose'));
}

module.exports = reverseString;

// pseudocode
// return string if length is 0 or 1
// return reverse_string(string - 0th character) + 0th character

// written explanation of solution
// Base case => we want to return if the string is empty or length == 1.
