class Solution {
  bool isPalindrome(int x) {
    List<String> numberAsString = x.toString().split('');
    numberAsString = numberAsString.reversed.toList();

    if (x.toString() == numberAsString.join('')) {
        return true;
    }

    return false;
  }
}