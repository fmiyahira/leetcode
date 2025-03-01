class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> result = [];
    for (int i = 0; i < nums.length; i++) {
      for (int i2 = i + 1; i2 < nums.length; i2++) {
        if (nums[i] + nums[i2] == target) {
          result = [i, i2];
          break;
        }
      }
    }

    return result;
  }
}