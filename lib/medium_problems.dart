// Medium Problems Collection
// Problems that require moderate algorithmic thinking and optimization

// ============================================================================
// Two Sum (O(n) solution using hash map)
// For better efficiency, here's an O(n) solution using a hash map
// ============================================================================

class Solution2 {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {}; // Key: number, Value: index

    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }
      numMap[nums[i]] = i;
    }
    return []; // Empty list if no solution (though problem guarantees one)
  }
}

// ============================================================================
// Product of Array Except Self (LeetCode 238)
// Problem statement: Given array nums, return an array answer such that
// answer[i] is the product of all the elements of nums except nums[i].
// Solve in O(n) time and O(1) extra space (output array not counted).
// Example: Input: [1,2,3,4] Output: [24,12,8,6]
// ============================================================================

class ProductArray {
  List<int> productArray(List<int> nums) {
    int n = nums.length;
    List<int> result = List<int>.filled(n, 1);

    int prefix = 1;
    for (int i = 0; i < n; i++) {
      result[i] = prefix;
      prefix *= nums[i];
    }

    int sufix = 1;
    for (int j = n - 1; j >= 0; j--) {
      result[j] *= sufix;
      sufix *= nums[j];
    }

    return result;
  }
}

// ============================================================================
// Remove Duplicates (Two Pointers approach)
// Given an array of integers, remove duplicates in-place such that each
// element appears only once and return the new length.
// Use two pointers technique for O(1) extra space.
// Example: nums = [1,1,2] -> nums becomes [1,2,...], return 2
// ============================================================================

List<int> removeDuplications(List<int> array) {
  if (array.isEmpty) return [];

  int i = 0; // slow pointer
  int j = 1; // fast pointer

  while (j < array.length) {
    if (array[j] != array[i]) {
      i++;
      array[i] = array[j];
    }
    j++;
  }
  List<int> result = [];
  for (int k = 0; k <= i; k++) {
    result.add(array[k]);
  }

  return result; // returns unique elements
}

// ============================================================================
// Second Largest Element in Unsorted Array
// Given an unsorted array, find the second largest element without sorting
// the array. Return null if it doesn't exist.
// Write O(n) time, O(1) additional space solution.
// Example: [1,2,5,2,7,6] -> 6
// ============================================================================

int? findSecondLargest(List<int> array) {
  int? largest;
  int? secondLargest;

  for (int num in array) {
    if (largest == null || num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num != largest &&
        (secondLargest == null || num > secondLargest)) {
      secondLargest = num;
    }
  }

  return secondLargest;
}

// ============================================================================
// Find Missing Numbers
// You're given an array containing n distinct numbers taken from 0, 1, 2, ..., n.
// Find the one number that is missing from the array.
// Uses marking technique with O(1) extra space.
// ============================================================================

List<int> findMissingNumbers(List<int> array) {
  List<int> missing = [];
  // Marking phase
  for (int i = 0; i < array.length; i++) {
    int val = array[i] < 0 ? -array[i] : array[i];
    int idx = val - 1;
    if (idx >= 0 && idx < array.length) {
      if (array[idx] > 0) {
        array[idx] = -array[idx];
      }
    }
  }
  // Collecting phase
  for (int i = 0; i < array.length; i++) {
    if (array[i] > 0) {
      missing.add(i + 1);
    }
  }
  return missing;
}

// ============================================================================
// Maximum Subarray Sum (Kadane's Algorithm)
// Find the contiguous subarray with the largest sum and return its sum.
// Example: [-2, -3, 4, -1, -2, 1, 5, -3] -> 7 (subarray [4, -1, -2, 1, 5])
// ============================================================================

int getMaxSubarraySum(List<int> array) {
  int currentSum = array[0];
  int maxSum = array[0];
  int startIndex = 0;
  int endIndex = 0;
  int tempStart = 0;

  for (int i = 1; i < array.length; i++) {
    if (currentSum < 0) {
      currentSum = array[i];
      tempStart = i;
    } else {
      currentSum += array[i];
    }

    if (currentSum > maxSum) {
      maxSum = currentSum;
      startIndex = tempStart;
      endIndex = i;
    }
  }

  print("Subarray from index $startIndex to $endIndex");
  return maxSum;
}

// ============================================================================
// Maximum Sum of K Consecutive Elements (Sliding Window)
// Find maximum sum of any contiguous subarray of size k.
// Example: [1, 4, 2, 10, 2, 3, 1, 0, 20], k=4 -> 24 (subarray [2, 10, 2, 3])
// ============================================================================

int maxSumOfKConsecutive(List<int> array, int k) {
  int currentSum = 0;
  int maxSum = 0;

  // Calculate sum of first window
  for (int i = 0; i < k; i++) {
    currentSum += array[i];
  }
  maxSum = currentSum;

  // Slide the window
  for (int i = k; i < array.length; i++) {
    currentSum = currentSum - array[i - k] + array[i];
    if (currentSum > maxSum) {
      maxSum = currentSum;
    }
  }

  return maxSum;
}

// ============================================================================
// Two Sum (Optimized using Hash Map)
// Given an array of integers and a target sum, return indices of two numbers
// that add up to the target using O(n) time complexity.
// Example: [1, 2, 4, 7, 11, 15], target = 15 -> [3, 4]
// ============================================================================

List<int> twoSumOptimized(List<int> arr, int target) {
  final Map<int, int> map = {}; // value -> index
  for (int i = 0; i < arr.length; i++) {
    int need = target - arr[i];
    if (map.containsKey(need)) {
      return [map[need]!, i]; // found
    }
    map[arr[i]] = i; // store current
  }
  return []; // no answer
}

// ============================================================================
// Longest Consecutive Sequence
// Given an unsorted array of integers nums, return the length of the
// longest consecutive elements sequence.
// You must write an algorithm that runs in O(n) time.
// Example: [100,4,200,1,3,2] -> 4 (sequence [1,2,3,4])
// ============================================================================

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
