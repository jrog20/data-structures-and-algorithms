function fibonacci(n) {
  // base case
  if(n < 2) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

if (require.main === module) {
  console.log("Expecting: 0");
  console.log("=>", fibonacci(0));

  console.log("");

  console.log("Expecting: 1");
  console.log("=>", fibonacci(2));

  console.log("");

  console.log("Expecting: 55");
  console.log("=>", fibonacci(10));
}

module.exports = fibonacci;

// Problem: Recursive Fibonacci Series

// Find the nth element in the Fibonacci series. 
// The Fibonacci sequence starts with a 0 followed by a 1. 
// After that, every value is the sum of the two values preceding it. 
// Here are the first seven values as an example: 0, 1, 1, 2, 3, 5, 8.

// ```
// Input: 0
// Output: 0

// Input: 2
// Output: 1

// Input: 10
// Output: 55
// ```

// iterative solution:
// function fibonacci(n) {
//   // base case
//   if (n < 2) {
//     return n;
//   }
//   // set the first two values in the fibonacci sequence
//   const values = [0, 1];
//   // since we already have the first two values in the fibonacci sequence, 
//   // to get the array index for the requested #, we must do the following action n-1 times
//   for (let i = 0; i < n - 1; ++i) {
//     // Add the last two values in the array together, and push the value to the array
//     values.push(values[values.length - 1] + values[values.length - 2]);
//   }
//   // return the last value in the sequence array
//   return values[values.length - 1];
// }

// recursive solution explanation:
// We can use the same base case as the iterative version: if n is less than 2, just
// return n, since 0 and 1 are the first values in the series. After that we need to
// calculate the next value by adding up the two previous values. If we recurse until
// n equals 0 or 1, we'll hit the base case and start returning values, which can then
// be added together. For example, if we start with n = 2, our recursive call will be
// fibonacci(1) + fibonacci(0). Both sides of the equation will hit the base case. The 
// left side will return 1 and the right side will return 0, resulting in a total of 1.
