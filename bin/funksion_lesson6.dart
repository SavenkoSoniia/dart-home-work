import 'dart:io';

//Функція для знаходження найбільшого числа
// Створіть функцію find_max, яка приймає три числа і повертає найбільше з них. Запишіть результат у змінну і виведіть її на екран.
void main(List<String> arguments) {
  print(findMax(3, 2, 10));
}

int findMax(int firstNumber, int secondNumber, int threeNumber) {
  if (firstNumber > secondNumber && firstNumber > threeNumber) {
    return firstNumber;
  } else if (secondNumber > firstNumber && secondNumber > threeNumber) {
    return secondNumber;
  } else {
    return threeNumber;
  }
}
