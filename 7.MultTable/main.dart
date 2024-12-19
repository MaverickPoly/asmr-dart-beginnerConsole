import 'dart:io';

void generateMultTable(int n) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= n; j++) {
      stdout.write("${i * j} ");
    }
    print("");
  }
}

void main() {
  print("Enter n: ");
  int n = int.parse(stdin.readLineSync() ?? "0");
  generateMultTable(n);
}
