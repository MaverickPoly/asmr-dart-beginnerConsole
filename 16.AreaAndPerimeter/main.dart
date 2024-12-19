import 'dart:io';

double perimeter(double a, double b) {
  return 2 * (a + b);
}

double square(double a, double b) {
  return a * b;
}

void main() {
  print("Enter side a of a square:");
  double a = double.parse(stdin.readLineSync() ?? "0");

  print("Enter side b of a square:");
  double b = double.parse(stdin.readLineSync() ?? "0");

  print("Perimeter: ${perimeter(a, b).toStringAsFixed(1)}");
  print("Square: ${square(a, b).toStringAsFixed(1)}");
}
