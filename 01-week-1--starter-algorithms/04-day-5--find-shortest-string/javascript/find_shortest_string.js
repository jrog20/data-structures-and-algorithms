function findShortestString(arr) {
  // let shortest = arr[0];
  // arr.forEach(string => {
  //   if (string.length < shortest.length) {
  //     shortest = string;
  //   }
  // });
  // return shortest;

  return arr.reduce((shortest, string) => 
    string.length < shortest.length ? string : shortest);
}

if (require.main === module) {
  console.log("Expecting: 'a'");
  console.log("=>", findShortestString(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log("=>", findShortestString(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log("=>", findShortestString(['flower', 'juniper', 'lily', 'dadelion']));
}

module.exports = findShortestString;

// # The problem:
// # Given an Array of strings, return the shortest string. 
// # If there is more than one string of that length, 
// # return the string that comes first in the list. 
// # The Array will have a minimum length of 1.

// # pseudocode:
// # shortest = first string
// # iterate over the array of strings
//   # if the current string is < shortest
//   # shortest = current string
// # return shortest

// # explanation:
// # If we store the first string in a variable, we can then
// # compare each subsequent string length to the first. If it is shorter,
// # we can replace the variable with the new shortest string.
