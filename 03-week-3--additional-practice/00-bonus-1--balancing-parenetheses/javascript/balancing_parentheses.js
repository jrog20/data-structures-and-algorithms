function balancingParentheses(string) {
  let missing = 0;
  let opening = 0;
  // iterate over the string
  for(let i = 0; i < string.length; ++i) {
    // if the char is '('
    if(string[i] === '(') {
      // increase open
      ++opening;
    // if the char is ')'
    } else {
      // if open == 0, increase missing
      if(opening === 0) {
        ++missing;
      // if open is not == 0, decrease open (i.e., this is a matching pair)
      } else {
        --opening;
      }
    }
  }
  return missing + opening;
}

if (require.main === module) {
  console.log("Expecting: 0");
  console.log(balancingParentheses('(()())'));

  console.log("");

  console.log("Expecting: 2");
  console.log(balancingParentheses('()))'));

  console.log("");

  console.log("Expecting: 1");
  console.log(balancingParentheses(')'));
}

module.exports = balancingParentheses;

// pseudocode
// open = 0
// missing = 0
// iterate over string
//   if '('
//     open += 1
//   else
//     if open == 0
//       missing += 1
//     else
//       open -= 0

// explanation of solution
// Since we know that we need a closing parenthesis for every open parenthesis, we can iterate
// over the array, increasing the open parenthesis count once for every time we encounter an open
// parenthesis and decreasing it once every time we encounter a closing parenthesis after it.
// If we encounter a closing parenthesis without first encountering an open parenthesis (open == 0), 
// we add one to a second counter, called missing, to account for any additional open parenthesis. 
// We then add open to missing to get the total number of parenthesis needed.

// The Problem: Balancing Parentheses
// For parentheses to be considered balanced, there must an opening parenthesis
// followed by a matching closing parenthesis. Given a string containing only 
// parentheses, return the number of additional parentheses needed for the string 
// to be considered balanced. The input string will have a minimum length of 1.