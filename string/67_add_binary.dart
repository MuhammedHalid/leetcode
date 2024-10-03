// Given two binary strings a and b, return their sum as a binary string.

// Example 1:

// Input: a = "11", b = "1"
// Output: "100"
// Example 2:

// Input: a = "1010", b = "1011"
// Output: "10101"

// Constraints:

// 1 <= a.length, b.length <= 104
// a and b consist only of '0' or '1' characters.
// Each string does not contain leading zeros except for the zero itself.

class Solution {
  String addBinary(String a, String b) {
     String binary = "";
    String carry = "0";
    int len = 0;
    if (a.length == b.length) {
      len = a.length;
    } else if (a.length < b.length) {
      len = b.length;
      a = "0" * (b.length - a.length)  + a;
    } else if (a.length > b.length) {
      len = a.length;
      b = '0' * (a.length - b.length)+ b;
    }
    for (var i = len - 1; i >= 0; i--) {
      if (a[i] == "0" && b[i] == "0" && carry == "0") {
        binary = "0" + binary;
        carry = "0";
      } else if (a[i] == "0" && b[i] == "1" && carry == "0") {
        binary = "1" + binary;
        carry = "0";
      } 
      else if (a[i] == "1" && b[i] == "0" && carry == "0") {
        binary = "1" + binary;
        carry = "0";
      }
      else if (a[i] == "1" && b[i] == "1" && carry == "0") {
        binary = "0" + binary;
        carry = "1";
      }  else if (a[i] == "0" && b[i] == "0" && carry == "1") {
        binary = "1" + binary;
        carry = "0";
      } else if (a[i] == "0" && b[i] == "1" && carry == "1") {
        binary = "0" + binary;
        carry = "1";
      } else if (a[i] == "1" && b[i] == "0" && carry == "1") {
        binary = "0" + binary;
        carry = "1";
      } else if (a[i] == "1" && b[i] == "1" && carry == "1") {
        binary = "1" + binary;
        carry = "1";
      }
    }
    if (carry == "1") {
      binary = carry + binary;
    }
    print(binary);
    return binary;
  }
}

void main() {
  Solution solution = Solution();
  Solution().addBinary("1111", "1111");
}
