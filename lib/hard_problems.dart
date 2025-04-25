
 //First Missing Positive

//  Given an unsorted integer array nums. Return the smallest positive integer that is not present in nums.

// You must implement an algorithm that runs in O(n) time and uses O(1) auxiliary space.

 

// Example 1:

// Input: nums = [1,2,0]
// Output: 3
// Explanation: The numbers in the range [1,2] are all in the array.

class Solution {
  int firstMissingPositive(List<int> nums) {
    int n = nums.length;

    // Step 1: Rearrange numbers to their correct positions
    for (int i = 0; i < n; i++) {
      while (
          nums[i] > 0 && nums[i] <= n && nums[nums[i] - 1] != nums[i]) {
        // Swap nums[i] to its correct position
        int temp = nums[i];
        nums[i] = nums[temp - 1];
        nums[temp - 1] = temp;
      }
    }

    // Step 2: Identify the first missing positive
    for (int i = 0; i < n; i++) {
      if (nums[i] != i + 1) {
        return i + 1;
      }
    }

    // Step 3: If all are in place, return n+1
    return n + 1;
  }
}