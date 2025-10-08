import 'dart:io';

// ============================================================================
// Beginner Problems Collection
// Problems that introduce fundamental programming concepts and basic algorithms
// ============================================================================

// ============================================================================
// Problem 1: Add Two Numbers
// Description: This program prompts the user to input two integers and calculates their sum.
// It introduces variables, user input, and basic arithmetic operations, which are critical for manipulating data in DSA problems.
// Example: Input: 5, 3 -> Output: The sum of 5 and 3 is 8
// ============================================================================

void addTwoNumbers() {
  print("Enter first number:");
  var firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter second number:");
  var secondNumber = int.parse(stdin.readLineSync()!);
  print(
    "The sum of $firstNumber and $secondNumber is ${firstNumber + secondNumber}",
  );
}

// ============================================================================
// Problem 2: Two Sum (Basic O(n²) approach)
// Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
// You may assume that each input would have exactly one solution, and you may not use the same element twice.
// This is the basic approach with O(n²) time complexity - good for learning nested loops.
// Example: Input: nums = [2,7,11,15], target = 9 -> Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
// ============================================================================

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

// ============================================================================
// Problem 3: Reverse String
// Given an input string, reverse the entire string character by character.
// This introduces string manipulation and basic iteration concepts.
// Example: Input: "hello" -> Output: "olleh"
// ============================================================================

class ReverseString {
  String reverseString(String s) {
    StringBuffer reversed = StringBuffer();
    for (int i = s.length - 1; i >= 0; i--) {
      reversed.write(s[i]);
    }
    String result = reversed.toString();
    print(result);
    return result;
  }
}

// ============================================================================
// Problem 4: Reverse Words in a Sentence
// This program takes an input string and reverses the order of the words in the sentence.
// Introduces string parsing and word manipulation concepts.
// Example: Input: "the sky is blue" -> Output: "blue is sky the"
// ============================================================================

class ReverseWords {
  String reverseWordsInSentence(String sentence) {
    String reversedSentence = '';
    String word = '';

    // Iterate through each character in the sentence
    for (int i = 0; i < sentence.length; i++) {
      // If the character is not a space, add it to the current word
      if (sentence[i] != ' ') {
        word += sentence[i];
      } else {
        // If the character is a space, add the word to the reversed sentence
        reversedSentence = (word + ' ') + reversedSentence;
        word = '';
      }
    }

    // Add the last word to the reversed sentence
    if (word.isNotEmpty) {
      reversedSentence = word + ' ' + reversedSentence;
    }

    // Print and return the reversed sentence
    print(reversedSentence.trim());
    return reversedSentence.trim();
  }
}

// ============================================================================
// Problem 5: Factorial Calculation
// This program calculates the factorial of a given number using iteration.
// Introduces loops and mathematical computations.
// Example: Input: 5 -> Output: Factorial of 5 is 120
// ============================================================================

void factorial(int number) {
  if (number < 0) {
    print("Factorial is not defined for negative numbers.");
  } else {
    int factorial = 1;
    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }
    print("Factorial of $number is $factorial");
  }
}

// ============================================================================
// Problem 6: Fibonacci Sequence
// This program generates the Fibonacci sequence up to a given number of terms.
// Introduces sequence generation and iterative patterns.
// Example: Input: 8 -> Output: 0, 1, 1, 2, 3, 5, 8, 13
// ============================================================================

void fibonacci(int number) {
  if (number <= 0) {
    print("Please enter a positive number.");
  } else {
    int a = 0, b = 1;
    for (int i = 0; i < number; i++) {
      print(a);
      int temp = a;
      a = b;
      b = temp + b;
    }
  }
}

// ============================================================================
// Problem 7: Word and Character Deletion
// Takes a string, a word to delete, and a character to delete.
// Introduces string processing, list manipulation, and conditional logic.
// Example: Input: "hey hii", "hii", "y" -> Output: "he hi" (after deleting "hii" and "y")
// ============================================================================

void wordAndCharDeletion() {
  print("Enter a string (e.g., 'hey hii'):");
  String input = stdin.readLineSync()!;
  print("Enter the word to delete (e.g., 'hii'):");
  String wordToDelete = stdin.readLineSync()!;
  print("Enter a character to delete (e.g., 'y'):");
  String charToDelete = stdin.readLineSync()!;

  // Split into words
  List<String> words = [];
  String currentWord = '';
  for (int i = 0; i < input.length; i++) {
    if (input[i] == ' ') {
      words.add(currentWord);
      currentWord = '';
    } else {
      currentWord += input[i];
    }
  }
  if (currentWord.isNotEmpty) {
    words.add(currentWord);
  }

  // Delete the word
  String result = '';
  for (int i = 0; i < words.length; i++) {
    if (words[i] == wordToDelete) {
      print("Simulating bold: **${words[i]}** (will be deleted)");
      continue;
    }
    result += words[i];
    if (i < words.length - 1 && words[i] != wordToDelete) {
      result += ' ';
    }
  }
  print("After deleting '$wordToDelete': $result");

  // Delete the character
  String finalResult = '';
  for (int i = 0; i < result.length; i++) {
    if (result[i] != charToDelete) {
      finalResult += result[i];
    }
  }
  print("After deleting '$charToDelete': $finalResult");
}

// ============================================================================
// Problem 8: Palindrome Checker
// Check if a given input (string or number) reads the same forwards and backwards.
// Introduces string/number reversal algorithms and comparison logic.
// Example 1: Input: "radar" -> Output: true
// Example 2: Input: 121 -> Output: true
// ============================================================================

class Palindrome {
  bool isPalindromeString(String value) {
    String duplicate = value;
    String reverse = '';
    for (int i = value.length - 1; i >= 0; i--) {
      reverse += value[i];
    }
    return reverse == duplicate;
  }

  bool isPalindromeNumber(int x) {
    // Check if the number is negative
    bool isNegative = x < 0;

    // Initialize a variable to store the reversed value
    int reversedVal = 0;

    // Make the number positive for further processing
    x = x.abs();

    // Store the original value of x for comparison later
    int duplicate = x;

    // If the number is negative, it cannot be a palindrome
    if (isNegative) {
      return false;
    }

    // Reverse the digits of the number
    while (x != 0) {
      // Get the last digit of the number
      int lastDigit = x % 10;

      // Remove the last digit from the number
      x = x ~/ 10;

      // Add the last digit to the reversed value
      reversedVal = reversedVal * 10 + lastDigit;
    }

    // Check if the reversed value is equal to the original value
    // If they are equal, the number is a palindrome
    return reversedVal == duplicate;
  }
}

// ============================================================================
// Problem 9: Rotate Array (In-place)
// Problem statement: Given array nums and an integer k, rotate the array to the right by k steps
// (i.e., every element moves k positions to the right, wrap-around). Do this in-place with O(1) extra space.
// This introduces array manipulation and the reverse algorithm technique.
// Example: Input: nums = [1,2,3,4,5,6,7], k = 3 -> Output: [5,6,7,1,2,3,4]
// Constraints: 1 <= nums.length <= 10^5, 0 <= k <= 10^9
// ============================================================================

void rotate(List<int> array, int k) {
  int numElements = array.length;
  k = k % numElements; // Handle cases where k > array length

  // Reverse the entire array
  reverseArray(array, 0, numElements - 1);

  // Reverse the first k elements
  reverseArray(array, 0, k - 1);

  // Reverse the remaining elements
  reverseArray(array, k, numElements - 1);

  print(array);
}

void reverseArray(List<int> array, int start, int end) {
  int i = start;
  int j = end;
  while (i < j) {
    int temp = array[i];
    array[i] = array[j];
    array[j] = temp;
    i++;
    j--;
  }
}






//Find all missing numbers
//nums = [4, 3, 2, 7, 8, 2, 3, 1]   // n = 8
// allMissingNumbers(List<int> array){
//   List<int> missing=[];
// for(int i=0; i<array.length; i++){

// int val= array[i]<0? -array[i]: array[i];

// int idx= val-1;

// if(idx>=0 && idx<array.length){
//   if(array[idx]>0){
// array[i]=-array[idx];
//   }
// }
// for(int i=0; i<array.length; i++){

//   if(array[i]>0){


//     missing.add(i+1);
//   }
// }

// }



// return missing;
// }
