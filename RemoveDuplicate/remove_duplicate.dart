class Solution{
  int removeDup(List<int>nums){
if(nums.isEmpty)return 0;
    int input=1;
    for(int i=1;i<nums.length;i++){
      if(nums[i]!=nums[i-1]){
        nums[input]=nums[i];
        input++;
        
      }
    }
    return input;
  }
}



// This function takes in a list of integers (nums) and an integer (val) to be removed.
// We initialize k = 0, which serves as an index pointer to place elements that are not equal to val.
// It also keeps track of how many elements remain in nums after removing val.
// We iterate over each element of nums using a for loop.
// If the current element nums[i] is not equal to val, we perform the next steps.
// The element nums[i] is moved to index k.
// k is incremented, so the next non-val element will be placed at the next index.