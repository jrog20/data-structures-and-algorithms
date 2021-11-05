function recursiveSearch(arr, target) {
  // base cases
  if(arr.length === 0) {
    return false;
  }
  if(arr[0] === target) {
    return true;
  }

  return recursiveSearch(arr.slice(1), target);
}

if (require.main === module) {
  console.log("Expecting: true");
  console.log("=>", recursiveSearch([1, 2, 3], 2));

  console.log("");

  console.log("Expecting: false");
  console.log("=>", recursiveSearch([3, 2, 1], 4));
}

module.exports = recursiveSearch;

// Recursive Search

// Given an Array of values, use recursion to find the target value. 
// Return `true` if found, otherwise `false`.

// ```
// Input: [1, 2, 3], 2
// Output: true

// Input: [3, 2, 1], 4
// Output: false
// ```

// Iterative solution:
// function iterativeSearch(arr, target) {
//   for (const value of arr) {
//     if (value === target) {
//       return true;
//     }
//   }

//   return false;
// }
