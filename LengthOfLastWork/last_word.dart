class Solution {
  int lengthOfLastWord(String s) {
    int length = 0;
    bool foundWord = false;

    for (int i = s.length - 1; i >= 0; i--) {
      if (s[i] != ' ') {
        length++;
        foundWord = true;
      } else if (foundWord) {
        break;
      }
    }
    
    return length;
  }
}

// Iterate from the end of the string: This helps in finding the last word efficiently.
// Ignore trailing spaces: Skip spaces at the end before counting the last word.
// Count characters in the last word: Once a non-space character is found, count until another space appears.
// Break when the last word is completely counted.