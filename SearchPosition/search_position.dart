class Solution{
  int searchPostion(List<int>nums,int target){

    int left=0,right=nums.length-1;
    while(left<=right){
      int a=left+(right-left)~/2;
      if(nums[a]==target){
        return a;
      }else if(nums[a]<target){
        left=a+1;
      }else{
        right=a-1;
      }
    }
    return left;
  }
}


// left starts at 0 (beginning of the list).
// right starts at nums.length - 1 (end of the list).

// The loop continues until left crosses right, meaning all possible positions have been checked.
// The formula left + (right - left) ~/ 2 prevents integer overflow.
// If nums[mid] is equal to target, return mid immediately.
// If nums[mid] is less than target, search the right half (left = mid + 1).
// If nums[mid] is greater than target, search the left half (right = mid - 1).
// If the target is not found, left represents the correct insertion index.