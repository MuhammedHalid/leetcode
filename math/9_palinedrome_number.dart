// 9. Palindrome Number
// Easy
// Topics
// Companies
// Hint
// Given an integer x, return true if x is a
// palindrome
// , and false otherwise.

// Example 1:

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:

// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:

// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.

// Constraints:

// -231 <= x <= 231 - 1

class Solution {
  bool isPalindrome(int x) {
    var copy = x;
    int rev = 0;
    if (x < 0) {
      print(false);
      return false;
    }
    while (x != 0) {
      var rem = x % 10;
      rev = (rev * 10) + rem;
      x = (x / 10).floor();
    }
    if (rev == copy) {
      print(true);
      return true;
    }
    print(false);
    return false;
  }
}

void main() {
  Solution solution = Solution();
  solution.isPalindrome(-121);
}


 
