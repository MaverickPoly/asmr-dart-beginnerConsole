import 'dart:io';

List<double> getNumbers() {
  print("Enter number 1: ");
  double num1 = double.parse(stdin.readLineSync() ?? "0");
  print("Enter number 2: ");
  double num2 = double.parse(stdin.readLineSync() ?? "0");
  return [num1, num2];
}

void main() {
  bool running = true;
  String? option = "";
  var input;
  var result;

  print("Welcome to this calculator app!");

  while (running) {
    print("1.Add\n2.Subtract\n3.Multiply\n4.Divide");
    print("Choose an option: ");
    option = stdin.readLineSync();

    switch (option) {
      case '1':
        input = getNumbers();
        result = input[0] + input[1];
        print("${input[0]} + ${input[1]} = ${result}");
        break;
      case '2':
        input = getNumbers();
        result = input[0] - input[1];
        print("${input[0]} - ${input[1]} = ${result}");
        break;
      case '3':
        input = getNumbers();
        result = input[0] * input[1];
        print("${input[0]} * ${input[1]} = ${result}");
        break;
      case '4':
        input = getNumbers();
        result = input[0] / input[1];
        print("${input[0]} / ${input[1]} = ${result}");
        break;
      default:
        print("Invalid choice. Please try again!");
    }

    print("Do you want to calculate again(y, n): ");
    running = stdin.readLineSync()?.toLowerCase() != 'n';
  }

  print("Thanks for calculating!");
}
