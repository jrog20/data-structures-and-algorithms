function consecutiveSubstrings(string) {
  const stringArr = string.split('');
  const substring = [];

  stringArr.forEach((char, idx) => {
    substring.push(char);

    let fragment = char;

    stringArr.slice(idx + 1).forEach((letter) => {
      fragment = fragment + letter;
      substring.push(fragment);
    });
  });

  return substring; 
}

if (require.main === module) {
  console.log("Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']");
  console.log("=>", consecutiveSubstrings('abc'));

  console.log("");

  console.log("Expecting: ['a']");
  console.log("=>", consecutiveSubstrings('a'));

  console.log("");

  console.log("Expecting: ['j', 'ja', 'jai', 'jaim', 'jaime', 'a', 'ai', 'aim', 'aime', 'i', 'im', 'ime', 'm', 'me', 'e']");
  console.log("=>", consecutiveSubstrings('jaime'));

  console.log("");

  console.log("Expecting: ['s', 'su', 'sun', 'u', 'un', 'n']");
  console.log("=>", consecutiveSubstrings('sun'));
}

module.exports = consecutiveSubstrings;

// The problem: Consecutive Substrings
// Given a string, return all consecutive substrings within that string
// consisting of at least one character. Substrings should be returned 
// in the order in which they appear.

// Notes:
// 1) In the string 'abc', 'ac' is not a consecutive substring.
// 2) The input string will have a length of 0 or more.

// explanation of solution
// We want to iterate through the array, capturing all possible substrings.
// We can initialize an empty array to push all the possible substrings into.
// We encounter the first character and push that onto the empty array. We also store
// that character in a variable. Each time we iterate through the string, we add
// one more element to the variable, and push the variable onto the array,
// until we reach the end of the string. We then start this process again, at the next index.

// pseudocode
// ##########################
// initialize an empty array called substrings
// iterate over the string:
//   push character onto substrings
//   initialize variable called fragment and store character in it

//   iterate over the string starting one index ahead
//     add character to fragment
//     push fragment onto substring
// return substring
// ##########################
