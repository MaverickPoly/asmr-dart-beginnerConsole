import 'dart:io';

String reverseString(String string) {
  return string.split("").reversed.join("");
}

void main() {
  while (true) {
    print("Enter a string:");
    String string = stdin.readLineSync() ?? "";
    print(reverseString(string));
  }
}
