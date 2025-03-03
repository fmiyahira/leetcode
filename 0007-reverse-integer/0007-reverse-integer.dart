class Solution {
  int reverse(int x) {
    bool isNegative = false;
    if (x < 0) {
        isNegative = true;
        x = x * -1;
    }

    List<String> listNumbers = x.toString().split('');
    var listNumbersReversed = listNumbers.reversed;
    int result = int.parse(listNumbersReversed.toList().join(''));
    result = isNegative ? result * -1 : result;

    if (result < (pow(-2, 31))) {
        return 0;
    }

    if (result > (pow(2, 31) - 1)) {
        return 0;
    }

    return result;
  }
}