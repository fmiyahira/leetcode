class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    Map<String, List<String>> hashList = {};

    for (int i = 0; i < strs.length; i++) {
        final List<String> listCharacteres = strs[i].split('');
        listCharacteres.sort();
        final String word = listCharacteres.join('');

        if (hashList[word] == null) {
            hashList[word] = [];
        }

        hashList[word]!.add(strs[i]);
    }

    final List<List<String>> result = [];
    for (String sortedString in hashList.keys) {
        result.add(hashList[sortedString]!);
    }

    return result;
  }
}