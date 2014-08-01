// exercises from Eloquent Javascript 2nd Edition

// Write a function min that takes two arguments and returns their minimum.

function min(x,y) {
  if (x < y) {
    return x;
  } else {
    return y;
  }
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10



// Define a recursive function isEven corresponding to this description.
// The function should accept a number parameter and return a Boolean.
// Test it on 50 and 75. See how it behaves on -1. Why? Can you think of a way to fix this?

function isEven(x) {
  if (Math.abs(x) == 1) {
    return false;
  } else if (Math.abs(x) === 0) {
    return true;
  } else {
    return isEven(x-2);
  }
}

console.log(isEven(50));
// → true
console.log(isEven(75));
// → false
console.log(isEven(-1));
// → false



// Bean counting

// You can get the Nth character, or letter, from a string by writing "string".charAt(N),
// similar to how you get its length with "s".length. The returned value will be a string
// containing only one character (for example, "b"). The first character has position zero,
// which causes the last one to be found at position string.length - 1. In other words, a
// two-character string has length 2, and its characters have positions 0 and 1.

// Write a function countBs that takes a string as its only argument and returns a number
// that indicates how many uppercase “B” characters are in the string.

// Next, write a function called countChar that behaves like countBs, except it takes a
// second argument that indicates the character that is to be counted (rather than counting
//   only uppercase "B" characters). Rewrite countBs to make use of this new function.

function countBs(str) {
  var count = 0;
  for (var i = 0; i < str.length; i++) {
    if (str.charAt(i) == "B") {
      count += 1;
    }
  }
  return count;
}

console.log(countBs("BBC"));
// → 2

function countChar(str, ltr) {
  var count = 0;
  for(var i = 0; i < str.length; i++) {
    if (str.charAt(i) == ltr) {
      count += 1;
    }
  }
  return count;
}

console.log(countChar("kakkerlak", "k"));
// → 4


















