import 'dart:io';
void main(List<String> arguments) {
  print('Hello, enter your year of birth and I will tell you how old you will be in 2025');
  String text1=stdin.readLineSync()!;
  int userAge = int.parse(text1);
  String text = 'Your age';
  int sum = 2025-userAge;
  print(text);
  print(sum);
}