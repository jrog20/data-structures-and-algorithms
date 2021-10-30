function fibonacci(num) {
  if(num < 2) {
    return num;
  }

  let lastTwo = [0,1];
  for(let i = 0; i < num - 1; i++) {
    let sum = lastTwo[0] + lastTwo[1];
    lastTwo = [lastTwo[1], sum];
  }
  return lastTwo[1];
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

// # Find the nth element in the Fibonacci series. 
// # The Fibonacci sequence starts with a 0 followed by a 1. 
// # After that, every value is the sum of the two values preceding it. 
// # Here are the first seven values as an example: 0, 1, 1, 2, 3, 5, 8.

// #########################################################################
// # pseudocode

// # Edge case: if n = 0 or 1, return 0 or 1
// # initiate array = [0, 1]
// # (nth - 1) times 
//   # Add two digits of array together and assign to variable sum
//   # remove first element of array
//   # move second element to location of first element
//   # move sum to second element of array
// # return second element in array

// #########################################################################
// # written explanation

// # The Fibinacci sequence is always the same. The first two digits are 0 and 1.
// # So, I could initiate a two-digit array of [0, 1]. 
// # I could then add those two digits together to get the next digit.
// # I could then remove the first digit of the array, move the 2nd digit to the first space in the array,
// # and place the new sum (3rd digit in sequence) to the second place in the two digit array.
// # I could then continue this process until the nth - 1 number of times.
// # Edge case: if n = 0 or 1, return 0 or 1

// #########################################################################
