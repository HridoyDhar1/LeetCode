class Solution{
  bool isValid(String s){
   List<String>a=[];
for(int i=0;i<s.length;i++){
  String ch=s[i];
  if(ch=='('||ch=='{'||ch=='['){
    a.add(ch);
  }else{
    if(a.isEmpty) return false;
String last=a.removeLast();
 

if ((ch == ')' && last != '(') || 
    (ch == '}' && last != '{') || 
    (ch == ']' && last != '[')) {
  return false;
}
    }
    

  }
  return a.isEmpty;
}
 }
// We use a list a to store opening brackets.
// If the character is an opening bracket ((, {, [), push it onto the a.
// If it's a closing bracket (), }, ]):
// First, check if the a is empty (if yes, return false).
// Pop the last bracket from the a and manually compare if it matches the current closing bracket.
// If they don't match, return false.
// If the a is empty at the end, return true (valid brackets).
// Otherwise, return false (some unmatched brackets remain).
