import 'dart:io';

//що друкує вітання
// Створіть функцію greet_user, яка приймає ім’я як аргумент і друкує повідомлення на зразок
// "Привіт, [ім'я]! Ласкаво просимо!". Викличте цю функцію тричі з різними іменами.
void main(List<String> arguments) {
  greetUser('Oleh');
  greetUser('Oleksandr');
  greetUser('Maks');
}

void greetUser(String userName) => print('Привіт $userName Ласкаво просимо!');
