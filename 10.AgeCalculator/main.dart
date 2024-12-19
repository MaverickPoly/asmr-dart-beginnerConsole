import 'dart:io';

int calculateAge(int year) {
  return 2024 - year;
}

void main() {
  bool isRunning = true;

  while (isRunning) {
    print("Enter the year you were born:");
    int year = int.parse(stdin.readLineSync() ?? "0");
    if (year >= 2025) {
      print("You entered a future year!");
    } else {
      int age = calculateAge(year);
      print("You should be ${age} years old!\n");
    }

    print("Do you want to calculate again:");
    String? again = stdin.readLineSync();
    isRunning = again != "n";
  }
}
