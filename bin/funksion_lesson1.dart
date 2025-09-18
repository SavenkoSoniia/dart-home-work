import 'dart:io';

//Створити функцію, що приймає два числа складає
// їх разом та виводить суму їх на екран. Треба викликати цю функцію 4 рази з різними вхідними параметрами
void main(List<String> arguments) {
  printSum(5, 8);
  printSum(100, 1785);
  printSum(6, 9);
  printSum(124, 124476);
}

void printSum(int firstNumber, int secondNumber) =>
    print(firstNumber + secondNumber);
