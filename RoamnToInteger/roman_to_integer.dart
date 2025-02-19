class Solution{

  int romanToInt(String s){
    Map<String,int>a={
       'I': 1, 'V': 5, 'X': 10, 'L': 50,
      'C': 100, 'D': 500, 'M': 1000
    };
    int result=0;
    int value=0;
    for(int i=s.length-1;i>=0;i--){
      int currentValue=a[s[i]]??0;
      if(currentValue<value){
        result-=currentValue;
      }else{
        result+=currentValue;
      }
      value=currentValue;
      
    }
   return result; 
  }
}

// A class named Solution is defined.
// The function romanToInt takes a string (s), representing a Roman numeral, and returns an integer.
// A map (a) stores the integer values of each Roman numeral.
// Example: 'I' = 1, 'V' = 5, 'X' = 10, etc.
// result: Stores the final integer value after processing all Roman numerals.
// value: Keeps track of the previous numeral’s value for subtraction logic.
// The loop starts from the last character (rightmost numeral) and moves backward.
// currentValue gets the integer value of the current a numeral from the map.
// If currentValue is smaller than value, subtract it from result.
// Example: IV → I (1) is before V (5), so we do 5 - 1 = 4.
// Otherwise, add currentValue to result.
// Example: VI → V (5) is before I (1), so we do 5 + 1 = 6.
// Update value to the current a value for the next iteration.
// After processing all characters, return the final integer result.