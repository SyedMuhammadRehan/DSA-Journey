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
      List<int> currentSeq = [
        num,
      ]; // Start the sequence with the current number
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

//  Reverse Integer

// Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

// Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

class Solution {
  int minInt = -2147483648;
  int maxInt = 2147483647;

  int reverse(int x) {
    bool isNegative = x < 0;
    x = x.abs();
    int reverseNumbers = 0;
    while (x != 0) {
      int extractedDigit = x % 10; // Get the last digit
      x = x ~/ 10; // Remove the last digit
      // Check for overflow before updating reverseNumbers
      if (reverseNumbers > (maxInt - extractedDigit) / 10) {
        return 0;
      }

      reverseNumbers = reverseNumbers * 10 + extractedDigit;
    }

    // Handle negative numbers
    if (isNegative) {
      reverseNumbers = -reverseNumbers;
    }

    // Check for overflow after final reversal
    if (reverseNumbers > maxInt || reverseNumbers < minInt) {
      return 0;
    }

    return reverseNumbers;
  }
}

// Valid Anagram

//Given two strings s and t, return true if t is an anagram of s, and false otherwise.

// Example 1:

// Input: s = "rat", t = "car"

// Output: false

class Anagram {
 bool isAnagram(String s, String t) {
  if (s.length != t.length) {
    return false;
  }
  if (s.isEmpty && t.isEmpty) {
    return true;
  }

  Map<String, int> charCount = {};
  for (int i = 0; i < s.length; i++) {
    charCount[s[i]] = (charCount[s[i]] ?? 0) + 1;
  }

  for (int i = 0; i < t.length; i++) {
    if (!charCount.containsKey(t[i])) {
      return false;
    }
    charCount[t[i]] = charCount[t[i]]! - 1;
    if (charCount[t[i]] == 0) {
      charCount.remove(t[i]);
    }
  }

  return charCount.isEmpty;
}
}
