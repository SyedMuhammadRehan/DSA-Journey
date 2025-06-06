//Problem 1: Add Two Numbers
// Description: This program prompts the user to input two integers and calculates their sum.
//It introduces variables, user input, and basic arithmetic operations, which are critical for manipulating data in DSA problems.
import 'dart:io';

addtwonumbers() {
  print("Enter first number:");
  var firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter second number:");
  var secondNumber = int.parse(stdin.readLineSync()!);
  print(
    "The sum of $firstNumber and $secondNumber is ${firstNumber + secondNumber}",
  );
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

//Problem 4: Reverse String
// Given an input string, reverse the string word by word.
// Example 1:
// Input: "the sky is blue"
// Output: "blue is sky the"

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
// Problem 5: Reverse Words in a Sentence
// Description: This program takes an input string and reverses the order of the words in the sentence.

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

void main() {
  ReverseWords reverseWords = ReverseWords();
  reverseWords.reverseWordsInSentence("the sky is blue");
}

// Problem 6: Factorial Calculation
// Description: This program calculates the factorial of a given number.

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

//Problem 7: Fibonacci Sequence
// Description: This program generates the Fibonacci sequence up to a given number of terms.

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

// Problem 8: Delete a word from a sentence
//Takes a string (e.g., "hey hii"), a word to delete (e.g., "hii"), and a character to delete (e.g., 'y').

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

void deleteWord(String sentence, String word, String character) {
  List<String> words = [];
  String currentword = '';

  // Split the sentence into words
  for (int i = 0; i < sentence.length; i++) {
    if (sentence[i] == '') {
      words.add(currentword);
    } else {
      currentword += sentence[i];
    }
    if (currentword.isNotEmpty) {
      words.add(currentword);
    }
  }
  // Delete the word
  String result = '';
  for (int i = 0; i < words.length; i++) {
    if (words[i] == word) {
      continue;
    }

    String newString = '';
    for (int i = 0; i < sentence.length; i++) {
      if (sentence[i] != ' ') {
        if (sentence[i] != character) {
          newString += sentence[i];
        }
      } else {
        newString = ' ' + newString;
      }
    }
    print(newString);
  }
}

// Problem 9: Is this a palindrome?

// Example 1:

// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.

class Palindrome {
  bool isPalindrome(int x) {
    // Check if the number is negative
    bool isNegative = x < 0;

    // Initialize a variable to store the reversed value
    int reversedval = 0;

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
      int lastdigit = x % 10;

      // Remove the last digit from the number
      x = x ~/ 10;

      // Add the last digit to the reversed value
      reversedval = reversedval * 10 + lastdigit;
    }

    // Check if the reversed value is equal to the original value
    // If they are equal, the number is a palindrome
    return reversedval == duplicate ? true : false;
  }
}