class Solution {
  int removeElement(List<int> nums, int val) {
    while(nums.contains(val)) {
        nums.remove(val);
    }

    return nums.length;
  }
}