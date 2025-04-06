class Solution {
  int romanToInt(String s) {
    int finalResult = 0;
    Map<String, int> listSymbolToInt = {
        'IV': 4,
        'IX': 9,
        'XL': 40,
        'XC': 90,
        'CD': 400,
        'CM': 900,
        'I': 1,
        'V': 5,
        'X': 10,
        'L': 50,
        'C': 100,
        'D': 500,
        'M': 1000,
    };

    for (MapEntry pairSymbolInt in listSymbolToInt.entries) {
        int count = pairSymbolInt.key.allMatches(s).length;
        finalResult += count * pairSymbolInt.value as int;
        s = s.replaceAll(pairSymbolInt.key, '');
    }
    
    return finalResult;
  }
}