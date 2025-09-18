import 'dart:io';

//Знайти суму тільки додатних чисел у масиві Створіть масив типу int, який містить 5 чисел: 3, -2, 5, -8, 7.
//Використовуючи цикл for, знайдіть і виведіть суму тільки додатних чисел масиву.
void main(List<String> arguments) {
  List<int> numbers = [3, -2, 5, -8, 7];
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 0) {
      sum += numbers[i];
    }
  }
  print(sum);
}
