// 205. Isomorphic Strings

// Given two strings s and t, determine if they are isomorphic.

// Two strings s and t are isomorphic if the characters in s can be replaced to get t.

// All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

// Example 1:

// Input: s = "egg", t = "add"
// Output: true
// Example 2:

// Input: s = "foo", t = "bar"
// Output: false
// Example 3:

// Input: s = "paper", t = "title"
// Output: true

// Constraints:

// 1 <= s.length <= 5 * 104
// t.length == s.length
// s and t consist of any valid ascii character.

class Solution {
  bool isIsomorphic(String s, String t) {
    if (s.length != t.length) return false;
    Map<String, String> mst = {};
    Map<String, String> mts = {};

    for (var i = 0; i < s.length; i++) {
      var chars = s[i];
      var chart = t[i];
      if (mst.containsKey(chars)) {
        if (mst[chars] != chart) {
          return false;
        }
      } else {
        mst[chars] = chart;
      }
      if (mts.containsKey(chart)) {
        if (mts[chart] != chars) {
          return false;
        }
      } else {
        mts[chart] = chars;
      }
      print(mst);
      print(mts);
    }
    return true;
  }
}

void main() {
  Solution solution = Solution();
  solution.isIsomorphic("foo", "bar");
}
