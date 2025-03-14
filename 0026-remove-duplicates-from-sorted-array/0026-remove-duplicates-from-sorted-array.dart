class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    int k = 1, i; 
    for (i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[k] = nums[i]; 
        k++;
      }
    }
    return k;
  }
}