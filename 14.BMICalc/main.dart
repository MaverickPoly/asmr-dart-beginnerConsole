import 'dart:io';

double calculateBMI(weight, height) {
  height = height / 100; // cm to meters
  return weight / (height * height);
}

void main() {
  print("Enter you height in cm: ");
  double height = double.parse(stdin.readLineSync() ?? "0");

  print("Enter you weight in kg: ");
  double weight = double.parse(stdin.readLineSync() ?? "0");

  double result = calculateBMI(weight, height);
  print(result.toStringAsFixed(2));
}
