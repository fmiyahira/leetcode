class Solution {
  List<int> twoSum(List<int> nums, int target) {
    int? index1;
    int? index2;

    for (int i = 0; i < nums.length; i++) {
        int currentNum = nums[i];
        int targetTemp = target - currentNum;

        index1 = i;
        for (int i2 = 0; i2 < nums.length; i2++) {
            if (i == i2) {
                continue;
            }

            if (targetTemp == nums[i2]) {
                index2 = i2;
                break;
            }
        }

        if (index2 != null) {
            break;
        }
    }

    return [index1!, index2!];
  }
}