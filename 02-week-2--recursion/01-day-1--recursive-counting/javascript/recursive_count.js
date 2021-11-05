function recursiveCount(num = 0) {
  if (num >= 10) {
    return;
  }
  recursiveCount(num + 1);
}

if (require.main === module) {
  recursiveCount();
}

module.exports = recursiveCount;

// # Problem: 
// # Change this while loop into a recursive method
// # The method should print numbers 0-9.

// let count = 0;

// while (count < 10) {
//   console.log(count);
//   ++count;
// }