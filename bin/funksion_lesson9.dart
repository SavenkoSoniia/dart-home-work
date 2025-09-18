import 'dart:io';

//Задача: "Витрата пального"
// Уяви, що ти пишеш програму для водія.
// Потрібно:
// Запросити в користувача:
// скільки літрів бензину в баку,
// витрату пального (літрів на 100 км).
// Зробити функцію, яка порахує, скільки кілометрів можна проїхати на цьому баку.
// Зробити функцію, яка скаже:
// запасХоду = (літриВБаку / витратаНа100км) * 100
//
// якщо запас ходу > 500 км → "Можна їхати далеко! 🛣️",
// якщо 200–500 км → "Середня відстань 🚗",
// якщо < 200 км → "Треба заправка ⛽".
// Результат в консолі
// Введи, скільки літрів бензину в баку: 40
// Введи витрату пального (літрів на 100 км): 8
//
// У тебе 40 л бензину і витрата 8 л/100 км.
// На цьому баку можна проїхати 500 км.
// Середня відстань
void main(List<String> arguments) {
  print('Привіт напиши скільки літрів бензину в баку');
  int amountPetrolTank = int.parse(stdin.readLineSync()!);
  print('Вкажи витрату пального (літрів на 100 км).');
  int fuelConsumption100 = int.parse(stdin.readLineSync()!);

  printCarInfo(
    amountPetrolTank,
    fuelConsumption100,
    runningReserve(amountPetrolTank, fuelConsumption100),
    reserveRunning(fuelConsumption100),
  );
}

double runningReserve(int amountPetrolTank, int fuelConsumption100) {
  double runningReserve = amountPetrolTank / fuelConsumption100 * 100;
  return runningReserve;
}

String reserveRunning(int fuelConsumption) {
  if (fuelConsumption > 500) {
    return ('Можна їхати далеко!');
  } else if (fuelConsumption <= 200 && fuelConsumption >= 500) {
    return  ('Середня відстань');
  } else {
    return  ('Треба заправка');
  }
}

void printCarInfo(
  int amoundPetroTank,
  int fuelConsumption100,
  double runningReserve,
  String fuelConsumption,
) {
  print(
    'У тебе $amoundPetroTank бензину і витрата $fuelConsumption100/100 км.',
  );
  print('На цьому баку можна проїхати $runningReserve км.');
  print('$fuelConsumption100');
}
