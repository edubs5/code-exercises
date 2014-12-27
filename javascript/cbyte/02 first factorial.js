
function factorial(num) {
  var result = 1;
  for (var x = 1; x <= num; x++) {
    result *= x;
  }
  return result;
}

factorial(5) === 120;