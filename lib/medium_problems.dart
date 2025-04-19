//Longest Consecutive Sequence

// Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

// You must write an algorithm that runs in O(n) time.

// Example 1:

// Input: nums = [100,4,200,1,3,2]
// Output: 4
// Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.

int longestConsecutive(List<int> nums) {
  // Create a set for O(1) lookups
  Set<int> numSet = {};
  for (int i = 0; i < nums.length; i++) {
    numSet.add(nums[i]);
  }

  int maxLength = 0;
  List<int> longestSeq = []; // List to store the longest sequence

  // Check each number
  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    // Only process if it's the start of a sequence (no num-1 in set)
    bool hasPredecessor = false;
    for (int x in numSet) {
      if (x == num - 1) {
        hasPredecessor = true;
        break;
      }
    }
    if (!hasPredecessor) {
      // Count length of sequence starting at num
      int currentNum = num;
      int currentLength = 1;
       List<int> currentSeq = [num]; // Start the sequence with the current number
      while (true) {
        bool found = false;
        for (int x in numSet) {
          if (x == currentNum + 1) {
            found = true;
            break;
          }
        }
        if (!found) break;
        currentNum++;
        currentLength++;
        currentSeq.add(currentNum); // Add the next number to the sequence
      }
      // Update max length
      if (currentLength > maxLength) {
        maxLength = currentLength;
      }
    }
  }
  print(maxLength);
  return maxLength;
}
