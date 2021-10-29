function findFirstDuplicate(arr) {
  const uniques = new Set();
  for(let i = 0; i < arr.length; i++) {
    if(uniques.has(arr[i])) {
      return arr[i];
    }
    uniques.add(arr[i]);
  }
  return -1
}

if (require.main === module) {
  console.log("Expecting: 3");
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]));

  console.log("");

  console.log("Expecting: -1");
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]));
}

module.exports = findFirstDuplicate;

// Given an Array, find the first duplicate value that occurs. 
// If there are no duplicates, return -1.

// # pseudocode
// # ******************************************
// # initiate a new Set
// # iterate over the array 
//   # return the element if the element exists in the set
//   # else add the element to the set
// # return -1 if no duplicate is found
// # ******************************************

// # written explanation of solution
// # ******************************************
// # A Set is a data structure the contains only unique values
// # if I iterate over the array and check if each value is in the Set,
// # I can return the first value that exists in the set because that is 
// # the first duplicate value.
// # If I get to the end of the array and have not found a duplicate,
// # return -1.
// # ******************************************