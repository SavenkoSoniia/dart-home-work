import 'dart:io';

//Функція, що повертає площу прямокутника
// Створіть функцію calculate_area, яка приймає два аргументи: довжину та ширину.
// Функція має обчислити площу прямокутника і повернути результат.
// Викличте функцію, збережіть результат у змінну area і виведіть її на екран.
void main(List<String> arguments) {
  print(getRectangleArea(3, 7));
}

int getRectangleArea(int firstNumber, int secondNumber) =>
    firstNumber * secondNumber;
