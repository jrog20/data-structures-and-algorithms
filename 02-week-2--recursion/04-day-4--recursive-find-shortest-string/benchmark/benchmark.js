// Iterative Solution:
function findShortestString(arr) {
  return arr.reduce((shortest, string) => 
    string.length < shortest.length ? string : shortest
  );
}

// Recursive Solution:
function findShortestStringRecursive(arr) {
  // base case
  if(arr.length === 1) {
    return arr[0];
  }
  // recursive call
  const result = findShortestStringRecursive(arr.slice(1));
  return arr[0].length <= result.length ? arr[0] : result;
}

function benchmark(callback) {
  const startTime = Date.now();

  for (let i = 0; i < 1000; ++i) {
    callback();
  }

  return (Date.now() - startTime) / 1000;
}

console.log('Iterative Solution:', benchmark(() => findShortestString(['lily', 'sunflower', '', 'dahlia', 'lilac'])));
console.log('Recursive Solution:', benchmark(() => findShortestStringRecursive(['lily', 'sunflower', '', 'dahlia', 'lilac'])));
