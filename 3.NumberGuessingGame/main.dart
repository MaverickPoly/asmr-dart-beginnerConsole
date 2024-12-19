import 'dart:io';
import 'dart:math';

void main() {
  print("Welcome to this Number guessing game!");
  print("Try to guess a number between 0 and 100\n");
  bool running = true;
  final random = Random();

  while (running) {
    int number, guess;
    int attempts = 0;
    number = random.nextInt(100);

    while (true) {
      print("Take a guess: ");
      guess = int.parse(stdin.readLineSync() ?? "0");

      if (guess > number) {
        print("Too high!");
        attempts++;
      } else if (guess < number) {
        print("Too low!");
        attempts++;
      } else if (guess == number) {
        print("Correct!");
        break;
      }
    }
    print("The correct answer was ${number}");
    print("It took you ${attempts} attempts to find the answer!");

    print("Do you want to play again(y, n): ");
    running = stdin.readLineSync() != 'n';
    print("");
  }

  print("Thanks for playing");
}
