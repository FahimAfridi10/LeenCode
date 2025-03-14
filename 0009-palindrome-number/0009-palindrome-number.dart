class Solution {
  bool isPalindrome(int x) {
      int original = x, reversed = 0, remainder;

  while (x > 0) {
    remainder = x % 10;
    reversed = reversed * 10 + remainder;
    x ~/= 10;
  }
  return original == reversed;
}

void main() {
  stdout.write("Enter a number: ");
  int x = int.parse(stdin.readLineSync()!);

  if (isPalindrome(x)) {
    print("true");
  } else {
    print("false");
  }
}
}