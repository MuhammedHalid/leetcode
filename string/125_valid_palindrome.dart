// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

// Given a string s, return true if it is a palindrome, or false otherwise.

// Example 1:

// Input: s = "A man, a plan, a canal: Panama"
// Output: true
// Explanation: "amanaplanacanalpanama" is a palindrome.
// Example 2:

// Input: s = "race a car"
// Output: false
// Explanation: "raceacar" is not a palindrome.
// Example 3:

// Input: s = " "
// Output: true
// Explanation: s is an empty string "" after removing non-alphanumeric characters.
// Since an empty string reads the same forward and backward, it is a palindrome.

// Constraints:

// 1 <= s.length <= 2 * 105
// s consists only of printable ASCII characters.

class Solution {
  bool isPalindrome(String s) {
    s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), "").toLowerCase();
    if (s == "")  {
      return true;
    }
    var i = 0;
    var j = s.length - 1;
    print(s[i]);
    print(s[j]);
    print(s);
    while (i < s.length) {
      if (s[i] != s[j]) {
        print("false");
        return false;
      }
      print("${s[i]} - ${s[j]}");
      i++;
      j--;
    }
    print(s);
    return true;
  }
}

void main() {
  Solution solution = Solution();
  solution.isPalindrome("1A man, a plan, a canal: Panama1");
}
