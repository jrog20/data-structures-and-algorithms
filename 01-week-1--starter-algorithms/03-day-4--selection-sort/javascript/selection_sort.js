function selectionSort(arr) {
  const sorted = [];

  while(arr.length > 0) {
    const min = Math.min(...arr);
    const min_index = arr.indexOf(min);

    sorted.push(min);
    arr.splice(min_index, 1);
  }
  return sorted;
}

if (require.main === module) {
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, 2]));

  console.log("");

  // BENCHMARK HERE, and print the average runtime
  const longInput = [];

  for (let i = 0; i < 100; ++i) {
    longInput.push(Math.random());
  }
}

module.exports = selectionSort;

// # Sort an Array of numbers using selection sort. 
// # The selection sort algorithm sorts an array by repeatedly finding 
// # the minimum element (lowest value) in the input Array, 
// # and then putting it at the correct location in the sorted Array.

// # ```
// # Input: [3, -1, 5, 2]
// # Output: [-1, 2, 3, 5]
// # ```

// # pseudocode
// # initiate an empty output array
// # for the length of the array
//   # find the minimum value by storing the value in a variable min
//   # remove minimum value from the input array
//   # push min onto the sorted output array
// # return the sorted array


// # explanation
// # I can iterate over the initial array, finding the minimum value, 
// # remove it from the initial array and add it to a new array. I can 
// # continue this process until the initial array is empty. I then have a 
// # new array with the values sorted.

