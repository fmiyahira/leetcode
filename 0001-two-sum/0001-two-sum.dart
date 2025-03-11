class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> mapNumbers = <int, int>{};

    for (int i = 0; i < nums.length; i++) {
        int remains = target - nums[i];

        if (mapNumbers.containsKey(remains)) {
            return [i, mapNumbers[remains]!];
        }

        mapNumbers[nums[i]] = i;
    }

    return [];
  }
}