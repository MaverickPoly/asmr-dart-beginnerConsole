// Palindrome checker

String reverseString(String string) {
  return string.split("").reversed.join("");
}

// OPTION 1: By reversing a string
bool isPalindrome(String string) {
  return string == reverseString(string);
}

// OPTION 2: By iterating
bool isPalindromeIterative(String string) {
  int start = 0;
  int end = string.length - 1;
  while (start < end) {
    if (string[start] != string[end]) {
      return false;
    }

    start++;
    end--;
  }

  return true;
}

void main() {
  String string = "braarb";
  print(isPalindrome(string));
  print(isPalindromeIterative(string));
}
