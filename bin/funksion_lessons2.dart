import 'dart:io';

//Створити функцію, що приймає три числа та повертає їх множення.
// Треба записати значення, яке поврене функція, в змінну та цю змінну вивести на еран.
void main(List<String> arguments) {
  print(getMultiplication(3, 2, 4));
}

int getMultiplication(int firstNumber, int secondNumber, int threeNumber) =>
    firstNumber * secondNumber * threeNumber;
