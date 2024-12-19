import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

bool isOdd(int number) {
  return number % 2 != 0;
}

void main() {
  while (true) {
    print("Enter a number: ");
    String? input = stdin.readLineSync();

    if (input is String && input.toLowerCase() == "q") {
      break;
    } else {
      int num = int.parse(input ?? "0");
      print("The number ${num} is ${isEven(num) ? 'even' : 'odd'}");
    }
  }
}
