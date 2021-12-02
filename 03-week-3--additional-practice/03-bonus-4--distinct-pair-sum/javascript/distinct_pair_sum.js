function distinctPairSum(arr, k) {
  let pairs = {};
  // iterate over array up to second to last item
  arr.slice(0, -1).forEach((num, idx) => {
    const nextValue = arr[idx + 1];
    // if current item and next item sum to k and they are not keys in pairs
    if(num + nextValue === k && 
      pairs[num] === undefined &&
      pairs[nextValue] === undefined) {
        // add current item as key in pairs with value of [current item, next item]
        pairs[num] = [num, nextValue];
      }
  })
  return Object.values(pairs);
}

if (require.main === module) {
  console.log("Expecting: [[1, 1], [2, 0]]");
  console.log("=>", distinctPairSum([0, 1, 1, 2, 0, 1, 1], 2));

  console.log("");

  console.log("Expecting: [[2, 8]]");
  console.log("=>", distinctPairSum([3, 4, 2, 1, 5, 2, 8, 2], 10));
}

module.exports = distinctPairSum;

// pseudocode 
// initialize empty object called pairs
 
//  iterate over array up to second to last item:
//   if current item and next item are not keys in pairs and they sum to k:
//     add current item as key in pairs with value of [current item, next item]
 
//  return values stored in pairs

// explanation of solution
//  Objects only allow keys with unique values. If we iterate over the array, and on 
//  each iteration, check if the current value and next value add up to k, we can then
//  check if either of those values is a key in pairs. If neither is a key in pairs, we
//  add the current element being iterated over as the key and the pair as the value. 
//  When the iteration is over, we return the values from pairs.

// the problem: Distinct Pair Sum
// Given an input Array and a target value `k`, 
// return all distinct pairs of consecutive numbers 
// that add up to `k`. A pair is distinct if no other pair 
// contains the same numbers. The order of the pairs and 
// order of the values in each pair does not matter
