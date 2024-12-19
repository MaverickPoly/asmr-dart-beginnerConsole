import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  if (number <= 3) {
    return true;
  }
  if (number % 2 == 0 || number % 3 == 0) {
    return false;
  }
  int i = 5;
  while (i * i <= number) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
    i += 6;
  }

  return true;
}

void main() {
  while (true) {
    print("Enter a number to check:");
    int number = int.parse(stdin.readLineSync() ?? "0");
    bool result = isPrime(number);
    if (result) {
      print("Number ${number} is Prime");
    } else {
      print("Number ${number} is not prime");
    }

    print("Again: ");
    String? again = stdin.readLineSync();
    if (again?.toLowerCase() == "n") {
      break;
    }
  }
}
