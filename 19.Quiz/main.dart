import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(
      {required this.questionText,
      required this.options,
      required this.correctAnswerIndex});
}

void main() {
  List<Question> quiz = [
    Question(
        questionText: "What is the capital of France?",
        options: ["Berlin", "Madrid", "London", "Paris"],
        correctAnswerIndex: 4),
    Question(
        questionText: "Which planet is known as the Red Planet?",
        options: ["Earth", "Mars", "Jupiter", "Venus"],
        correctAnswerIndex: 2),
    Question(
        questionText: "What is the largest mammal?",
        options: ["Elephant", "Blue Whale", "Giraffe", "Bear"],
        correctAnswerIndex: 2),
  ];
  int score = 0;

  print("Welcome to the Quiz App!");
  print("Answer the following questions:\n");

  for (var i = 0; i < quiz.length; i++) {
    var question = quiz[i];
    print("Question ${i + 1}: ${question.questionText}");

    for (var j = 0; j < question.options.length; j++) {
      print("${j + 1}) ${question.options[j]}");
    }

    stdout.write("Your answer (1-${question.options.length}): ");
    String input = stdin.readLineSync() ?? "";

    if (int.tryParse(input) == null) {
      print("Invalid input. Skipping the question\n");
      continue;
    }

    int userAnswer = int.parse(input);

    if (userAnswer == question.correctAnswerIndex) {
      print("Correct!\n");
      score++;
    } else {
      print(
          "Wrong! The correct answer was: ${question.options[question.correctAnswerIndex - 1]}\n");
    }
  }

  print("Quiz completed!");
  print("Your final score is: $score/${quiz.length}");
}
