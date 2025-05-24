List<int> plusOne(List<int> digits) {
  int n = digits.length;
  
  for (int i = n - 1; i >= 0; i--) {
    if (digits[i] < 9) {
      digits[i] += 1;
      return digits;
    }
    digits[i] = 0;
  }
  
 
  digits.insert(0, 1);
  return digits;
}
// Traverse from the last digit to the first: We start from the rightmost digit and check if it's less than 9.
// Increment and return: If the digit is less than 9, we increment it and return the array immediately.
// Handle carry-over: If the digit is 9, we set it to 0 and continue to the next digit.
// Handle edge case (all 9s): If all digits are 9 (e.g., [9,9,9]), we insert 1 at the beginning to form [1,0,0,0].