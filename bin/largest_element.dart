 import 'dart:io';

//Знайти найбільший елемент у масиві
// Створіть масив типу int, який містить наступні числа: 7, 14, 21, 28, 35, 42.
// Використовуючи цикл for, знайдіть і виведіть на екран найбільший елемент у масиві.
void main(List<String> arguments) {
  List<int> numbers = [7, 14, 21, 65, 35, 42];
  int max = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (max < numbers[i]) {
      max = numbers[i];
    }
  }
  print('Максимальне число: $max');
}
