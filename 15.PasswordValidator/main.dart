import 'dart:io';

bool validatePassword(String password) {
  if (password.length < 8) {
    return false;
  }

  RegExp hasUppercase = RegExp(r'[A-Z]');
  RegExp hasLowercase = RegExp(r'[a-z]');
  RegExp hasDigit = RegExp(r'\d');
  RegExp hasSpecialCharacter = RegExp(r'[!@#$%^&*(),.?:{}|<>]');

  bool containsUppercase = hasUppercase.hasMatch(password);
  bool containsLowercase = hasLowercase.hasMatch(password);
  bool containsDigit = hasDigit.hasMatch(password);
  bool containsSpecialCharacter = hasSpecialCharacter.hasMatch(password);

  return containsUppercase &&
      containsLowercase &&
      containsDigit &&
      containsSpecialCharacter;
}

void main() {
  print("Enter a password");
  String password = stdin.readLineSync() ?? "";
  if (validatePassword(password)) {
    print("Password is valid!");
  } else {
    print("Password is invalid!");
  }
}
