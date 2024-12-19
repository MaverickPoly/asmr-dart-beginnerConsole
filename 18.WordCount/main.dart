import 'dart:io';

int countWords(String string) {
  return string.split(" ").length;
}

void main() {
  while (true) {
    print("Enter a word: ");
    String string = stdin.readLineSync() ?? "";

    if (string.toLowerCase() == "n") {
      break;
    } else {
      print(countWords(string));
    }
  }
}
