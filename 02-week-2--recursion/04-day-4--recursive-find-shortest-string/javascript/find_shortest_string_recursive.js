function findShortestStringRecursive(arr) {
  // base case
  if(arr.length === 1) {
    return arr[0];
  }
  // recursive call
  const result = findShortestStringRecursive(arr.slice(1));
  return arr[0].length <= result.length ? arr[0] : result;
}

if (require.main === module) {
  console.log("Expecting: 'a'");
  console.log("=>", findShortestStringRecursive(['aaa', 'a', 'bb', 'ccc']));

  console.log("");

  console.log("Expecting: 'hi'");
  console.log("=>", findShortestStringRecursive(['cat', 'hi', 'dog', 'an']));

  console.log("");

  console.log("Expecting: 'lily'");
  console.log("=>", findShortestStringRecursive(['flower', 'juniper', 'lily', 'dandelion']));
}

module.exports = findShortestStringRecursive;

// #######################################################
// The Problem: Find the shortest string
// Given an Array of strings, return the shortest string. 
// If there is more than one string of that length, 
// return the string that comes first in the list. 
// The Array will have a minimum length of 1.
// #######################################################

// Explanation of Iterative Solution:
// I want to iterate over the array of strings, 
// assign the value of the first string to a variable called shortest.
// I can then compare the length of that string with the length of the next
// string in the array. If the next string length is shorter, replace the variable 
// called shortest with the newly found shortest string. Since we are only replacing
// the variable if the string is shorter, if we encounter a string of the same length
// as is currently stored in the variable, it will not be replaced and we will return 
// the first string of the shortest length.

// Iterative Solution:
// function findShortestString(arr) {
//   return arr.reduce((shortest, string) => 
//     string.length < shortest.length ? string : shortest
//   );
// }
 
// Explanation of Recursive Solution:
// Base case = if array of strings is length of 1, return the first string.
// Then we need to compare every element in the array to find the shortest.
// We do this by recursively calling the method with a smaller and smaller array,
// until we only have one string remaining in the array, at which point the 
// stack starts to unwind, compares each string, and returns the shortest length.

