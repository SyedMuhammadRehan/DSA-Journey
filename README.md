# 🚀 DSA-Journey

[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)]()
[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)]()

> A comprehensive collection of Data Structures and Algorithms (DSA) solutions, organized by difficulty level from beginner-friendly concepts to advanced techniques. Perfect for learning, practicing, and mastering algorithmic problem-solving.

## 📋 Table of Contents

- [🎯 Project Overview](#-project-overview)
- [🏗️ Project Structure](#️-project-structure)
- [📚 Problems by Difficulty](#-problems-by-difficulty)
- [🚀 Getting Started](#-getting-started)
- [💻 How to Use](#-how-to-use)
- [🎓 Learning Path](#-learning-path)
- [🤝 Contributing](#-contributing)
- [📈 Progress Tracking](#-progress-tracking)
- [🔧 Technical Details](#-technical-details)
- [📝 Recent Updates](#-recent-updates)
- [📄 License](#-license)

## 🎯 Project Overview

**DSA-Journey** is a structured learning repository that provides hands-on practice with Data Structures and Algorithms problems. The project is organized into three difficulty levels:

- **🟢 Beginner**: Fundamental concepts and basic problem-solving techniques
- **🟡 Medium**: Intermediate algorithms requiring moderate optimization thinking
- **🔴 Hard**: Advanced problems for experienced developers (coming soon)

Each problem includes:
- ✅ Clear problem statements and examples
- ✅ Multiple solution approaches (where applicable)
- ✅ Time and space complexity analysis
- ✅ Detailed explanations and comments
- ✅ Test cases and edge case handling

## 🏗️ Project Structure

```
lib/
├── beginner_problems.dart    # Easy-level problems for beginners
├── medium_problems.dart      # Intermediate-level algorithmic challenges
├── hard_problems.dart        # Advanced problems (structure ready)
└── dsa.dart                  # Main entry point with test functions
```

## 📚 Problems by Difficulty

### 🟢 Beginner Level (9 Problems)

| Problem | Description | Key Concepts | Time Complexity |
|---------|-------------|--------------|-----------------|
| **Add Two Numbers** | Basic arithmetic with user input | Variables, I/O, arithmetic | O(1) |
| **Two Sum** | Find pair that sums to target (basic approach) | Nested loops, arrays | O(n²) |
| **Reverse String** | Reverse characters in a string | String manipulation, loops | O(n) |
| **Reverse Words** | Reverse word order in sentence | String parsing, word manipulation | O(n) |
| **Factorial** | Calculate factorial using iteration | Loops, mathematical computation | O(n) |
| **Fibonacci** | Generate Fibonacci sequence | Sequence generation, iteration | O(n) |
| **Word & Char Deletion** | Remove words and characters from strings | String processing, conditional logic | O(n) |
| **Palindrome Checker** | Check if string/number is palindrome | String reversal, comparison | O(n) |
| **Rotate Array** | Rotate array elements in-place | Array manipulation, reverse algorithm | O(n) |

### 🟡 Medium Level (8 Problems)

| Problem | Description | Key Concepts | Time Complexity |
|---------|-------------|--------------|-----------------|
| **Two Sum (Optimized)** | Find pair using hash map | Hash tables, single pass | O(n) |
| **Product of Array Except Self** | Product without division | Prefix/suffix products | O(n) |
| **Remove Duplicates** | Remove duplicates using two pointers | Two pointers technique | O(n) |
| **Second Largest Element** | Find second largest in unsorted array | Single pass algorithm | O(n) |
| **Find Missing Numbers** | Find missing numbers using marking | Index marking technique | O(n) |
| **Maximum Subarray Sum** | Kadane's algorithm implementation | Dynamic programming | O(n) |
| **Max Sum of K Elements** | Sliding window maximum sum | Sliding window technique | O(n) |
| **Longest Consecutive Sequence** | Find longest sequence in unsorted array | Hash set optimization | O(n) |

### 🔴 Hard Level (0 Problems - Coming Soon)

Advanced problems will include:
- Dynamic programming challenges
- Graph algorithms (DFS, BFS, shortest path)
- Advanced tree problems
- Complex mathematical problems
- System design problems

## 🚀 Getting Started

### Prerequisites

- **Dart SDK** (version 2.19.0 or higher)
- **Flutter SDK** (for any UI components)
- **Git** (for version control)
- **VS Code** or any Dart-compatible IDE

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/SyedMuhammadRehan/DSA-Journey.git
   cd DSA-Journey
   ```

2. **Verify Dart installation:**
   ```bash
   dart --version
   ```

3. **Run the project:**
   ```bash
   dart run lib/dsa.dart
   ```

## 💻 How to Use

### Running Individual Problems

Each problem can be tested individually by uncommenting the desired function call in `lib/dsa.dart`:

```dart
void main() {
  // Test beginner problems
  addTwoNumbers();
  // Solution solution = Solution();
  // print(solution.twoSum([2,7,11,15], 9));

  // Test medium problems
  // print(findSecondLargest([1,2,5,2,7,6]));
  // print(getMaxSubarraySum([-2, -3, 4, -1, -2, 1, 5, -3]));
}
```

### Testing All Problems

To run all problems sequentially:

```bash
dart run lib/dsa.dart
```

### Adding New Problems

1. Choose the appropriate difficulty file
2. Add the problem with proper documentation
3. Include examples and explanations
4. Test the implementation
5. Commit with a descriptive message

## 🎓 Learning Path

### Recommended Study Order

1. **Start with Beginner Problems** (1-2 weeks)
   - Focus on understanding basic programming concepts
   - Practice I/O operations and simple algorithms
   - Build confidence with small, manageable problems

2. **Move to Medium Problems** (2-3 weeks)
   - Learn optimization techniques
   - Understand time/space complexity trade-offs
   - Practice with more complex data structures

3. **Advance to Hard Problems** (3-4 weeks)
   - Master advanced algorithmic concepts
   - Solve complex, interview-level problems
   - Develop systematic problem-solving approaches

### Daily Practice Tips

- ⏰ **Consistency over intensity** - 30-60 minutes daily is better than cramming
- 📝 **Take notes** - Document your thought process and learnings
- 🔍 **Analyze multiple approaches** - Compare different solutions
- 🧪 **Test edge cases** - Always consider boundary conditions
- 📖 **Read discussions** - Learn from others' approaches after solving

## 🤝 Contributing

We welcome contributions! Here's how you can help:

### Adding New Problems

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/new-problem`
3. **Add your problem** to the appropriate difficulty file
4. **Include comprehensive documentation**
5. **Test your implementation**
6. **Commit your changes**: `git commit -m "feat: add [problem name]"`
7. **Push to the branch**: `git push origin feature/new-problem`
8. **Submit a pull request**

### Improving Existing Solutions

- Add alternative approaches
- Optimize existing algorithms
- Improve documentation and examples
- Fix bugs or edge cases

### Contribution Guidelines

- Follow the existing code style and formatting
- Include clear problem statements and examples
- Add time/space complexity analysis
- Test your code thoroughly
- Update this README if needed

## 📈 Progress Tracking

### Current Status

- ✅ **Beginner Problems**: 9/9 completed (100%)
- 🟡 **Medium Problems**: 8/8 completed (100%)
- 🔴 **Hard Problems**: 0/10 planned (0%)

### GitHub Stats

![GitHub last commit](https://img.shields.io/github/last-commit/SyedMuhammadRehan/DSA-Journey)
![GitHub repo size](https://img.shields.io/github/repo-size/SyedMuhammadRehan/DSA-Journey)

## 🔧 Technical Details

### Language & Framework
- **Primary Language**: Dart
- **Framework**: Flutter (for any future UI components)
- **Runtime**: Dart VM

### Code Organization
- **Modular structure** by difficulty level
- **Consistent naming conventions**
- **Comprehensive documentation**
- **Error handling and edge cases**

### Performance Considerations
- **Efficient algorithms** with optimal time complexity
- **Memory-conscious** implementations
- **Scalable solutions** for large inputs

## 📝 Recent Updates

### Version 1.0.0 (Latest)
- ✅ **Organized problems by difficulty level**
- ✅ **Created hard problems structure**
- ✅ **Enhanced documentation and formatting**
- ✅ **Added comprehensive README**
- ✅ **Improved code organization**

### Previous Versions
- **Initial commit**: Basic problem collection
- **Version 0.5**: Added medium-level problems

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🌟 Show Your Support

If you found this project helpful, please give it a ⭐️!

**Happy Learning! 🚀**

*Made with ❤️ for the coding community*
