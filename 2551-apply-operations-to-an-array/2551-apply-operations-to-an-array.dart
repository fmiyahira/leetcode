class Solution {
  List<int> applyOperations(List<int> nums) {
    List<int> newList = List.from(nums);

    for (int i = 0; i < nums.length; i++) {
        if (newList.length - 1 < i + 1) {
            continue;
        }

        int value1 = newList[i];
        int value2 = newList[i + 1];

        if (value1 == value2) {
            newList[i] = value1 * 2;
            newList[i + 1] = 0;
            continue;
        }
    }

    List<int> finalList = [];
    List<int> zerosList = [];

    for (int value in newList) {
        if (value == 0) {
            zerosList.add(value);
            continue;
        }

        finalList.add(value);
    }

    finalList.addAll(zerosList);
    return finalList;
  }
}
