class Solution {
  String multiply(String num1, String num2) {
  if (num1 == "0" || num2 == "0") return "0";

  int i, j, m = num1.length, n = num2.length;
  List<int> result = List.filled(m + n, 0);

  for (i = m - 1; i >= 0; i--) {
    for (j = n - 1; j >= 0; j--) {
      int mul = (num1[i].codeUnitAt(0) - '0'.codeUnitAt(0)) *
          (num2[j].codeUnitAt(0) - '0'.codeUnitAt(0));
      int sum = mul + result[i + j + 1];

      result[i + j + 1] = sum % 10;
      result[i + j] += sum ~/ 10;
    }
  }

  StringBuffer sb = StringBuffer();
  for (int num in result) {
    if (!(sb.isEmpty && num == 0)) {
      sb.write(num);
    }
  }
  return sb.toString();
}
}