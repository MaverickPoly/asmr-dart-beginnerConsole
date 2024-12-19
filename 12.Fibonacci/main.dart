import 'dart:io';

int fibonacciN(int n) {
  if (n <= 2) return 1;
  return fibonacciN(n - 1) + fibonacciN(n - 2);
}

List<int> generateFibonacci(int n) {
  List<int> result = [];
  for (int i = 1; i <= n; i++) {
    result.add(fibonacciN(i));
  }
  return result;
}

void main() {
  print("Enter number of fibonacci numbers to generate:");
  int n = int.parse(stdin.readLineSync() ?? "0");
  final result = generateFibonacci(n);
  print(result);
  print("");
  for (final el in result) {
    print(el);
  }
}
