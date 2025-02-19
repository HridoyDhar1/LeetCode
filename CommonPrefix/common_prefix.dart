class Solution{
  String longestCommonPrefix(List<String>strs){
    String prefix=strs[0];
    for(int i=0;i<strs.length;i++){
      while(!strs[i].startsWith(prefix)){
        prefix=prefix.substring(0,prefix.length-1);
        if(prefix.isEmpty)return "";
      }
    }
    return prefix;
  }
}
// Defines a function longestCommonPrefix that takes a list of strings as input.
// Assume the first string as the longest common prefix.
// Loop through each string in the list starting from the second string.
// Check if current string (strs[i]) does not start with prefix.
// If not, reduce the prefix character by character from the end.
// Shorten the prefix by removing the last character until a match is found.
// If no match is found, prefix gets shorter until it becomes "".
// Once the loop finishes, return the longest common prefix found.