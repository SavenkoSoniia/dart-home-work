import 'dart:io';
import 'dart:math';

//Уяви, що ти працюєш в автосалоні.
// Треба зробити невелику програму, яка:
// Приймає назву машини та її максимальну швидкість.
// Має функцію, яка перевіряє, чи ця машина швидша за 200 км/год.
// Має функцію, яка переводить кінські сили (hp) у кіловати (1 hp = 0.7355 kW).
// Має функцію, яка красиво виводить опис машини.
//Машина: BMW M5
// Макс. швидкість: 250 км/год
// Потужність: 600 hp (441.3 kW)
// Це дуже швидка машина!
//  Машина: Toyota Corolla
// Макс. швидкість: 180 км/год
// Потужність: 140 hp (102.9 kW)
// Це спокійний автомобіль.
//  Машина: Nissan GT-R
// Макс. швидкість: 315 км/год
// Потужність: 565 hp (415.2 kW)
// Це дуже швидка машина!
void main(List<String> arguments) {
  print('Привіт напиши марку машини');
  String car = stdin.readLineSync()!;
  print('Напиши швидкість $car');
  int maxSpeed = int.parse(stdin.readLineSync()!);
  printCarInfo(
    car,
    maxSpeed,
    getHorsepower(maxSpeed),
    isVehicleSpeed(maxSpeed),
  );
}

bool isVehicleSpeed(int maxSpeed) => maxSpeed > 200;

double getHorsepower(int maxSpeed) => maxSpeed * 0.7355;

void printCarInfo(
  String carName,
  int maxSpeed,
  double horsepower,
  bool isFast,
) {
  print('Машина :$carName');
  print('Макс. швидкість: $maxSpeed');
  print('Потужність: $horsepower');
  isFast
      ? print('Це дуже швидка машина!')
      : print('Це спокійний автомобіль.');
}
