class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}


// This method takes two strings:
// haystack: The main string where we search.
// needle: The substring we are looking for.
// It returns an integer (the index of the first occurrence of needle in haystack).
// The indexOf(needle) function:
// Searches for the first occurrence of needle inside haystack.
// If found, it returns the starting index of needle in haystack.
// If needle is not found, it returns -1.
