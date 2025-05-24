class Solution{
void merge(List<int> nums1, int m, List<int> nums2, int n) {
  int i = m - 1;        // Pointer for last valid element in nums1
  int j = n - 1;        // Pointer for last element in nums2
  int k = m + n - 1;    // Pointer for last position in nums1

  while (j >= 0) {
    if (i >= 0 && nums1[i] > nums2[j]) {
      nums1[k] = nums1[i];
      i--;
    } else {
      nums1[k] = nums2[j];
      j--;
    }
    k--;
  }
}

}