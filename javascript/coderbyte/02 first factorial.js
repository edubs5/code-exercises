// 02
// Take the num parameter being passed and return the factorial of it
// (ie. if num = 4, return (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.

function factorial(num) {
  var result = 1;
  for (var x = 1; x <= num; x++) {
    result *= x;
  }
  return result;
}

factorial(5) === 120;