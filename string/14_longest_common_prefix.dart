// 14. Longest Common Prefix

// Write a function to find the longest common prefix string amongst an array of strings.

// If there is no common prefix, return an empty string "".

// Example 1:

// Input: strs = ["flower","flow","flight"]
// Output: "fl"
// Example 2:

// Input: strs = ["dog","racecar","car"]
// Output: ""
// Explanation: There is no common prefix among the input strings.

// Constraints:

// 1 <= strs.length <= 200
// 0 <= strs[i].length <= 200
// strs[i] consists of only lowercase English letters.

class Solution {
  String longestCommonPrefix(List<String> strs) {
    

    String prefix = strs[0];
    int j = 0;
    for (var i = 1; i < strs.length; i++) {
      // print(prefix[i]);
      while (j < strs[i].length) {
        if (prefix[j] == strs[i].toString()[j]) {
          print(prefix[j]);
          j++;
        } else {
          break;
        }
      }
      prefix = prefix.substring(0, j);
      j = 0;
    }
    print("hi: $prefix");
    return prefix;
  }
}

void main() {
  Solution solution = Solution();
  solution.longestCommonPrefix(["flower", "flow", "flight"]);
}
