function reverseString(str) {
  let reversed = ""
  for(let i = str.length - 1; i > -1; i--) {
    reversed = reversed + str[i]
  }
  return reversed
}

if (require.main === module) {
  console.log("Expecting: 'ih'");
  console.log("=>", reverseString("hi"));

  console.log("");

  console.log("Expecting: 'ybabtac'");
  console.log("=>", reverseString("catbaby"));
}

module.exports = reverseString;

// pseudocode
// Initialize a variable called reversed with an empty string
// iterate over the string backwards 
  // and add each character to the end of reversed
// return reversed

// explanation
// Initialize a variable called reversed with an empty string
// iterate over the string backwards and add each character to the end of reversed

