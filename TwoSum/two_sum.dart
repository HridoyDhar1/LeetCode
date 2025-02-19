class Solution{
  List<int>twoSum(List<int>num,int target){
    Map<int,int>numbers={};
    for(int i=0;i<num.length;i++){
      int a=target-num[i];
      if(numbers[a]!=null){
        return [numbers[a]!,i];
      }
       numbers[num[i]]=i;
    }
    throw Exception("Not Found");
  }
}

// Map to store numbers and its index
// Check if the complement is already in the map
// Store index of current numbers
//  Iteration (i = 0):
// Current numbers: nums[0] = 2
// Calculate the complement: a = target - nums[0] = 9 - 2 = 7
// Now, we check if 7 is in the numbers map. Since the map is empty at this point, it's not.
// We store nums[0] = 2 with its index 0 in the map: