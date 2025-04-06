class Solution {
  int romanToInt(String s) {
    int finalResult = 0;
    Map<String, int> listSymbolToInt = {
        'I': 1,
        'IV': 4,
        'V': 5,
        'IX': 9,
        'X': 10,
        'XL': 40,
        'L': 50,
        'XC': 90,
        'C': 100,
        'CD': 400,
        'D': 500,
        'CM': 900,
        'M': 1000,
    };
    
    List<int> listIndexesTreated = [];
    for (int i = 0; i < s.length; i++) {
        if (listIndexesTreated.contains(i)) {
            continue;
        }

        String symbol = s[i];
        String symbol2 = i + 1 < s.length ? s[i + 1] : '';

        listIndexesTreated.add(i);
        if (listSymbolToInt['$symbol$symbol2'] != null) {
            listIndexesTreated.add(i + 1);
            finalResult += listSymbolToInt['$symbol$symbol2'] as int;
        } else {
            finalResult += listSymbolToInt[symbol] as int;
        }
    }

    return finalResult;
  }
}