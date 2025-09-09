import 'dart:io';

//Ти пишеш програму для віртуального автотреку.
// Програма має вміти:
// Запросити в користувача назву машини, її максимальну швидкість та розгін 0–100 км/год.
// Зробити функцію, яка порахує, скільки часу ця машина проїде коло довжиною 5 км (використай формулу час = відстань / швидкість
// Зробити функцію, яка скаже, наскільки машина швидка:
// якщо розгін < 4 секунд — "Суперкар 🚀",
// якщо розгін від 4 до 7 секунд — "Швидкий спорткар 🏎️"
// якщо розгін > 7 секунд — "Звичайна машина 🚗".
// Зробити функцію, яка красиво виведе результат у стилі:
//Машина: BMW M3
// Коло: 72 секунди
// Категорія: Швидкий спорткар 🏎️
void main(List<String> arguments) {
  print('Привіт напиши марку машини');
  String car = stdin.readLineSync()!;
  print('Напиши швидкість $car');
  int maxSpeed = int.parse(stdin.readLineSync()!);
  print('Напишт за скільки часу машина розганяється ?');
  int maxTime = int.parse(stdin.readLineSync()!);

  printCarInfo(car, getFiveKilometersCircleDrivingTime(maxSpeed), getCarType(maxTime));
}

double getFiveKilometersCircleDrivingTime(int maxSpeed) => 5 / maxSpeed;


String getCarType(int maxTime) {
  if (maxTime < 4) {
    return ('Суперкар');
  } else if (maxTime >= 4 && maxTime <= 7) {
    return ('Швидкий спорткар');
  } else {
    return ('Звичайна машина ');
  }
}

void printCarInfo(String carName, double carTimeCircle, String maxSpeed) {
  print('Машина: $carName');
  print('Коло: $carTimeCircle секунди');
  print('Категорія: $maxSpeed');
}
