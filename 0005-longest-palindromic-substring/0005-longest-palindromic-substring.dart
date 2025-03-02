class Solution {
  String findNextPalindrome(
    String s,
    int posIni,
    int posFin,
    int qauntAround,
    String palindrome,
  ) {
    if ((posIni - qauntAround) >= 0 && (posFin + qauntAround + 1) <= s.length) {
      String partialString =
          s.substring(posIni - qauntAround, posFin + qauntAround + 1);
      if (partialString == partialString.split('').reversed.join('')) {
        return findNextPalindrome(
            s, posIni, posFin, qauntAround + 1, partialString);
      }
    }

    if (posFin + 2 <= s.length) {
      String partialString2 = s.substring(posIni, posFin + 2);
      if (partialString2 == partialString2.split('').reversed.join('')) {
        return findNextPalindrome(
            s, posIni, posFin + 1, qauntAround, partialString2);
      }
    }

    return palindrome;
  }

  String longestPalindrome(String s) {
    List<String> listCharacters = s.split('');


    if (s == s.split('').reversed.join('')) {
        return s;
      }

    String finalResult = listCharacters[0];

    for (int i = 0; i < listCharacters.length; i++) {
      String result = findNextPalindrome(s, i, i, 1, '');
      if (result.length > finalResult.length) {
        finalResult = result;
      }
    }

    return finalResult;
  }
}