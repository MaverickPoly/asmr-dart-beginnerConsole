import 'dart:io';

String fahrToCel(double fahr) {
  return ((fahr - 32) * 5 / 9).toStringAsFixed(1);
}

String celToFahr(double cel) {
  return ((cel * 9 / 5) + 32).toStringAsFixed(1);
}

void main() {
  bool isRunning = true;
  print("Temperature converter");

  while (isRunning) {
    print("\n1.Fahrenheit to Celsius\n2.Celsius to Fahrenheit");
    print("Select option: ");
    String? option = stdin.readLineSync();
    if (option == "1") {
      print("Enter temperature in Fahrenheit:");
      double temp = double.parse(stdin.readLineSync() ?? "0");
      String res = fahrToCel(temp);
      print("${temp} fahrenheit equals to ${res} celsius");
    } else if (option == "2") {
      print("Enter temperature in Celsius:");
      double temp = double.parse(stdin.readLineSync() ?? "0");
      String res = celToFahr(temp);
      print("${temp} celsius equals to ${res} fahrenheit");
    } else {
      print("Invalid option. Please try again..");
    }

    print("Do you want to calculate again?(y, n)");
    String? again = stdin.readLineSync();
    isRunning = again?.toLowerCase() != "n";
  }

  print("Thanks for calculating");
}
