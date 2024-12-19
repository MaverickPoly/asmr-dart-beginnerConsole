import 'dart:io';

double calculateInterest(double principal, double interest_rate, double time) {
  return (principal * interest_rate * time) / 100;
}

void main() {
  print("Enter the principal amount: ");
  double principal = double.parse(stdin.readLineSync() ?? "0");

  print("Enter the  annual interest rate: ");
  double interest_rate = double.parse(stdin.readLineSync() ?? "0");

  print("Enter the  time in years: ");
  double time = double.parse(stdin.readLineSync() ?? "0");

  double result = calculateInterest(principal, interest_rate, time);
  print("Interest result: ${result.toStringAsFixed(1)}");
}
