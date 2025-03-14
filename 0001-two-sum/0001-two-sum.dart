class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var i, j, x = nums.length;
    for (i = 0; i < x; i++) {
    for (j = i+1; j < x; j++) {
      if (nums[i] + nums[j] == target) return [i, j];
    }
  }
  return [i,j];
  }
}