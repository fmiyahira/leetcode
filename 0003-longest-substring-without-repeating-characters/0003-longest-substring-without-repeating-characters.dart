class Solution {
  int lengthOfLongestSubstring(String s) {
    List<String> listChars = s.split('');
    List<List<String>> listGroups = [];

    for (int i = 0; i < listChars.length; i++) {
        listGroups.add([]);
        listGroups[i].add(listChars[i]);

        for (int i2 = i + 1; i2 < listChars.length; i2++) {
            if (listGroups[i].contains(listChars[i2])) {
                break;
            }

            listGroups[i].add(listChars[i2]);
        }
    }

    int maxChars = 0;
    for (List<String> group in listGroups) {
        if (group.length > maxChars) {
            maxChars = group.length;
        }
    }

    return maxChars;
  }
}