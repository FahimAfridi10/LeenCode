class Solution {
  bool isHappy(int n) {
  Set<int> seen = {};

  int getNext(int num) {
    int sum = 0;
    while (num > 0) {
      int digit = num % 10;
      sum += digit * digit;
      num ~/= 10;
    }
    return sum;
  }

  while (n != 1 && !seen.contains(n)) {
    seen.add(n);
    n = getNext(n);
  }
  return n == 1;
  }
}