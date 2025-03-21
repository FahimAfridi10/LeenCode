class Solution {
  double myPow(double x, int n) {
    if (n == 0) return 1;
    
    int N = n;
    if (N < 0) {
      x = 1 / x;
      N = -N;
    }

    return (N % 2 == 0) ? myPow(x * x, N ~/ 2) : x * myPow(x * x, N ~/ 2);
  }
}
