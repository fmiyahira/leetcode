class Solution {
  int myAtoi(String s) {
    String stringWithoutSpaces = s.trim();

    if (stringWithoutSpaces.isEmpty) {
      return 0;
    }

    bool startsWithNumber = int.tryParse(stringWithoutSpaces[0]) != null;

    if (!startsWithNumber &&
        stringWithoutSpaces[0] != '-' &&
        stringWithoutSpaces[0] != '+') {
      return 0;
    }

    List<String> listChars = stringWithoutSpaces.split('');
    String validString = '';
    for (int i = 0; i < listChars.length; i++) {
      if (int.tryParse(listChars[i]) != null ||
          (i == 0 && (listChars[i] == '-' || listChars[i] == '+'))) {
        validString = '$validString${listChars[i]}';
        continue;
      }
      break;
    }

    if (BigInt.tryParse(validString) == null) {
      return 0;
    }

    BigInt result = BigInt.tryParse(validString)!;
    if ((pow(2, 31) * -1) > result.toInt()) {
      return int.parse((pow(2, 31) * -1).toString());
    }

    if ((pow(2, 31) - 1) < result.toInt()) {
      return int.parse((pow(2, 31) - 1).toString());
    }

    return result.toInt();
  }
}