import 'dart:io';

//Функція для перевірки на парне число
// Створіть функцію is_even, яка приймає одне число.
// Функція має повернути True, якщо число парне, і False, якщо непарне.
// Викличте функцію з різними числами та виведіть результат.
void main(List<String> arguments) {
  int num = int.parse(stdin.readLineSync()!);

  isNumberEven(num)
      ? print('Число $num: парне')
      : print('Число $num: не парне');

  /// Te ж саме, що зверху
  // if (isNumberEven(num)) {
  //   print('Число $num: парне');
  // } else {
  //   print('Число $num: не парне ');
  // }
}

bool isNumberEven(int number) => number % 2 == 0;
