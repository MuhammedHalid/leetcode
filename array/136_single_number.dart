// 136. Single Number
// Easy
// Topics
// Companies
// Hint
// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.

// You must implement a solution with a linear runtime complexity and use only constant extra space.

// Example 1:

// Input: nums = [2,2,1]
// Output: 1
// Example 2:

// Input: nums = [4,1,2,1,2]
// Output: 4
// Example 3:

// Input: nums = [1]
// Output: 1

// Constraints:

// 1 <= nums.length <= 3 * 104
// -3 * 104 <= nums[i] <= 3 * 104
// Each element in the array appears twice except for one element which appears only once.
class Solution {
  int singleNumber(List<int> nums) {
    if (nums.length == 1) {
      return nums[0];
    }
    for (var i = 0; i < nums.length - 1; i++) {
      print(nums);
      for (var j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          nums.removeAt(i);
          nums.removeAt(j - 1);
          i = -1;
          print(nums);
          break;
        }
      }
      if (nums.length == 1) {
        print(nums[0]);
        return nums[0];
      }
    }
    return 0;
  }
}

void main() {
  Solution solution = Solution();
  solution.singleNumber([1, 1, 2, 3, 4, 5, 4, 5, 3, -1, 2]);
}
