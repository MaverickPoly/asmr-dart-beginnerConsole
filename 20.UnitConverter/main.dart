import 'dart:io';

double celToFahr(double temp) {
  return temp * (9 / 5) + 32;
}

double fahrToCel(double temp) {
  return (temp - 32) * 5 / 9;
}

double getInput() {
  print("Enter a temperature:");
  return double.parse(stdin.readLineSync() ?? "0");
}

void main() {
  print("Welcome to temperature converter app!");
  while (true) {
    print(
        "1.Fahrenheit to Celsius\n2.Celsius to Fahrenheit\nSelect an option:");
    String option = stdin.readLineSync()!;

    if (option == '1') {
      double temp = getInput();
      print(
          "${temp} fahrenheit = ${fahrToCel(temp).toStringAsFixed(1)} celsius");
    } else if (option == '2') {
      double temp = getInput();
      print(
          "${temp} celsius = ${celToFahr(temp).toStringAsFixed(1)} fahrenheit");
    } else {
      print("Invalid input!");
    }

    print("Do you want to calculate again(y, n): ");
    String again = stdin.readLineSync() ?? "";
    if (again.toLowerCase() == "n") {
      break;
    }
  }
  print("\nThanks for calculating!");
}
