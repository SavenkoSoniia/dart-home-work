import 'dart:io';

//Калькулятор середнього бала
// Опис завдання:
// Напишіть програму, яка запитує у користувача кількість предметів, а потім пропонує ввести оцінки для кожного предмета.
// Програма повинна обчислити та вивести середній бал студента.
// Вхідні дані:
// Кількість предметів.
// Оцінки по кожному предмету (вводяться користувачем).
// Вихід:
// Вивести середній бал студента.
void main(List<String> arguments) {
  print('Привіт напиши кількість предметів');
  int numberOfItems = int.parse(stdin.readLineSync()!);
  List<int> userArray = [];
  print('Тепер заповни цю кількість оцінками  ');
  print('введіть оцінки : ');
  for (int i = 0; i < numberOfItems; i++) {
    int element = userInput();
    userArray.add(element);
  }
  print('Ось твій середній бал :');
  int sum =0 ;
  double result=0;
  for (int i = 0; i < userArray.length; i++) {
    sum+=userArray[i];
  }
  result=sum/numberOfItems;
  print(result);
}
int userInput() {
  int num = int.parse(stdin.readLineSync()!);
  while (num < 0 || num > 12) {
    num = int.parse(stdin.readLineSync()!);
  }
  return num;
}