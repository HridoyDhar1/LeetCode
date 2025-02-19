class Solution{
  bool isPalindrome(int x){
    if(x<0)return false;
    String s=x.toString();
    String result=s.split('').reversed.join('');
    return s==result;

  }
}

// If the integer x is negative, it's immediately not a palindrome (since negative numbers can't be palindromes).
// Convert the integer x to a string and check if the string is the same when reversed.
// The split('').reversed.join('') is used to reverse the string. If the original string equals the reversed string, then x is a palindrome.