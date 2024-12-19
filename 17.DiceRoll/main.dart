import 'dart:io';
import 'dart:math';

int rollDice() {
  Random random = Random();
  return random.nextInt(6) + 1;
}

void main() {
  while (true) {
    print("Roll Dice?(y, n)");
    String choice = stdin.readLineSync() ?? "";
    if (choice.toLowerCase() == "n") {
      break;
    } else {
      print("Rolled dice: ${rollDice()}");
    }
  }
}
