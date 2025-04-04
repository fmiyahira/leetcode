class Solution {
  String longestCommonPrefix(List<String> strs) {
    List<String> prefixList = [];
    List<String> charsFromFirstWord = strs[0].split('');
    bool wordContainsPrefix = true;

    for (int indexChar = 0; indexChar < charsFromFirstWord.length; indexChar++) {
        String char = charsFromFirstWord[indexChar];
        for (int index = 1; index < strs.length; index++) {
            if (strs[index].length <= indexChar) {
                wordContainsPrefix = false;
                break;
            }

            if (char != strs[index][indexChar]) {
                wordContainsPrefix = false;
                break;
            }
        }

        if (!wordContainsPrefix) {
            break;
        }

        prefixList.add(char);
    }

    return prefixList.join('');
  }
}