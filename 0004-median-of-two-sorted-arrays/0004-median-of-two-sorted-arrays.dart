class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    nums1.addAll(nums2);

    nums1.sort();

    if (nums1.length > 1) {
        bool isOdd = nums1.length % 2 > 0;
        while (nums1.length != 1 && nums1.length != 2) {
            nums1.removeAt(0);
            nums1.removeAt(nums1.length - 1);
        }
    }

    int total = 0;
    for (int num in nums1) {
        total += num;
    }

    return total / nums1.length;
  }
}