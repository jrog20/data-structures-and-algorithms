function rotateArray(arr, k) {
  const rotations = k % arr.length;
  const removed = arr.splice(arr.length - rotations, rotations);

  return removed.concat(arr);
}

if (require.main === module) {
  console.log("Expecting: [4, 1, 2, 3]");
  console.log("=>", rotateArray([1, 2, 3, 4], 1));

  console.log("");

  console.log("Expecting: [2, 3, 1]");
  console.log("=>", rotateArray([1, 2, 3], 2));

  console.log("");

  console.log("Expecting: [1, 2, 3]");
  console.log("=>", rotateArray([1, 2, 3], 3));
}

module.exports = rotateArray;

// The problem: Rotate Array Clockwise

// Given an input Array, rotate `k` units clockwise, 
// i.e. shift the values rightward `k` units.

// `k` is an Integer >= 0.

// ```
// Input: [1, 2, 3, 4], 1
// Output: [4, 1, 2, 3]

// Input: [1, 2, 3], 2
// Output: [2, 3, 1]

// Input: [1, 2, 3], 3
// Output: [1, 2, 3]
// ```

// explanation
//  We can solve this problem by figuring out how many elements to remove from the end
//  of the array, and then adding those removed elements to the front of the array. 
//  We need to account for when k is the same or larger than the array's length.
//  We can do this by getting the remainder of k / the array length.

// pseudocode
//  initialize rotations to store the remainder of k / array length
//  remove rotations number elements from end of array
//  return removed elements + remaining elements

