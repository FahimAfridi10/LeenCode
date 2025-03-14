class Solution {
  int lengthOfLastWord(String s) {
    int n = s.length, res = 0;
    
    while (n > 0) {
      if (s[--n] != ' ')  res++;
      else if (res > 0) return res;  
    }
    return res;
  }
}