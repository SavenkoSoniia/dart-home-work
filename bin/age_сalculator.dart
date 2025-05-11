import 'dart:io';
//Програма повинна:
//
// Запитати у користувача рік народження.
// Обчислити його вік (у 2024 році).
// Вивести результат у консоль.

void main(List<String> arguments) {
  print(
    'Hello, enter your year of birth and I will tell you how old you will be in 2025',
  );
  int userBirthYear = int.parse(stdin.readLineSync()!);
  int userAge = 2025 - userBirthYear;
  print('Your age $userAge');
}
