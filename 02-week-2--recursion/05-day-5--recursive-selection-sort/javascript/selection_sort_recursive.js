function selectionSortRecursive(arr) {
  if (arr.length === 0) {
    return [];
  }
  const min = Math.min(...arr);
  const idx = arr.indexOf(min);
  arr.splice(idx, 1);
  const result = selectionSortRecursive(arr);
  result.unshift(min);
  return result;
}

if (require.main === module) {
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSortRecursive([3, -1, 5, 2]));

  console.log("");
}

module.exports = selectionSortRecursive;

// The problem: Selection Sort
// Sort an Array of numbers using selection sort. 
// The selection sort algorithm sorts an array by 
// repeatedly finding the minimum element (lowest value) 
// in the input Array, and then putting it at the correct 
// location in the sorted Array.

// explanation
// base case: array == 0
// call recursive sort function on array, pushing the
// result of min each time on the front of the array, since
// the recursive call will unwind at the last call which will 
// be the largest value in the original array

// iterative solution:
// function selectionSort(arr) {
//   const sorted = [];
//   while (arr.length > 0) {
//     const min = Math.min(...arr);
//     const idx = arr.indexOf(min);

//     sorted.push(min);
//     arr.splice(idx, 1);
//   }
//   return sorted;
// }

// explanation of recursive solution:
// 

