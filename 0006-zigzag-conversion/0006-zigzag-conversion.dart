class Solution {
  String convert(String s, int numRows) {
    List<String> listChars = s.split('');
    Map<int, String> matrix = {};

    int currentRow = 0;
    bool invertDirection = false;
    for (int i = 0; i < listChars.length; i++) {
        if (matrix[currentRow] == null) {
            matrix[currentRow] = '';
        }

        matrix[currentRow] = '${matrix[currentRow]}${listChars[i]}';
        
        if (numRows > 1) {
            currentRow += !invertDirection ? 1 : -1; 
            if (currentRow == numRows - 1 || currentRow == 0) {
                invertDirection = !invertDirection;
            }
        }
    }


    String result =  '';
    for (int line = 0; line < numRows; line++) {
        if (matrix[line] == null) {
            break;
        }
        result = '$result${matrix[line]!.replaceAll(' ', '')}';
    }

    return result;
  }
}