import 'dart:io';

int factorialN(int num) {
  if (num <= 1) return 1;
  return num * factorialN(num - 1);
}

List<int> generateFactorial(int num) {
  List<int> result = [];
  for (int i = 1; i <= num; i++) {
    result.add(factorialN(i));
  }
  return result;
}

void main() {
  print("Enter the amount of factorial numbers to generate: ");
  int num = int.parse(stdin.readLineSync() ?? "0");
  List<int> result = generateFactorial(num);
  print(result);
}
