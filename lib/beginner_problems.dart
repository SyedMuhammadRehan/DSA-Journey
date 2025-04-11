//Problem 1: Add Two Numbers
// Description: This program prompts the user to input two integers and calculates their sum.
//It introduces variables, user input, and basic arithmetic operations, which are critical for manipulating data in DSA problems.
import 'dart:io';

addtwonumbers() {
  print("Enter first number:");
  var firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter second number:");
  var secondNumber = int.parse(stdin.readLineSync()!);
  print( "The sum of $firstNumber and $secondNumber is ${firstNumber + secondNumber}");
}



//Problem 3: Two Sum
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

// You may assume that each input would have exactly one solution, and you may not use the same element twice.

// You can return the answer in any order.

 

// Example 1:

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].


class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> indices = [];
    
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          indices.add(i);
          indices.add(j);
          return indices; // Return immediately since there's exactly one solution
        }
      }
    }
    return indices; // Empty list if no solution (though problem guarantees one)
  }
}


//with hash map 
//For better efficiency, here’s an O(n) solution using a hash map
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