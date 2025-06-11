import 'dart:io';

//У місті проходять нічні перегони. Кожна машина стартує з нульової швидкості
// і кожну секунду перша додає 10 км/год до своєї швидкості, а друга 20 км/год
// поки не досягне максимально дозволеної швидкості.
//
//Як тільки машина досягає цієї швидкості — вона рухається з нею далі.
// Користувач вводить дистанцію, яку треба проїхати машинам
// Як тільки машина досягає цієї швидкості — вона рухається з нею далі.
//
// Як тільки обдві машини набрали максимальну швидкість, вони стартують перегон.
// Треба порахувати за який час (в годинах) машини досягнуть фінішу

// // Вхідні дані:
// //  • Максимальна швидкість машини 1 (в км/год), наприклад: v_max = 100
// //  • Максимальна швидкість машини 2 (в км/год), наприклад: v_max = 140
// //  • Дистанція = 500 км.

// //  • Відстань, яку треба проїхати (км)
// //  --- 1 Етап - РОЗГОН ----
// //  Машина 1 - швидкість 0 км/год
// //  Машина 2 - швидкість 0 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 10 км/год
// //  Машина 2 - швидкість 20 км/год
//   --- - - - - -- - - - - - - -
// //  Мшина 1 - швидкість 20 км/год
// // //  Машина 2 - швидкість 40 км/года
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 30 км/год
// //  Машина 2 - швидкість 60 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 40 км/год
// //  Машина 2 - швидкість 80 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 50 км/год
// //  Машина 2 - швидкість 100 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 60 км/год
// //  Машина 2 - швидкість 120 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 70 км/год
// //  Машина 2 - швидкість 140 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 80 км/год
// //  Машина 2 - швидкість 140 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 90 км/год
// //  Машина 2 - швидкість 140 км/год
//   --- - - - - -- - - - - - - -
// //  Машина 1 - швидкість 100 км/год
// //  Машина 2 - швидкість 140 км/год
// //  --- 2 Етап - ПЕРЕГОНИ ----
// //  Машина 1 - проїхала дистанцію 500 км за 500/100 = 5 годин
// //  Машина 2 - проїхала дистанцію 500 км за 500/140 = ?? годин

void main(List<String> arguments) {
  print(
    'Hello to participate in the race specify the maximum speed of the car1 ',
  );
  int vMax1 = int.parse(stdin.readLineSync()!);
  print('Participate in the race specify the maximum speed of the car2 ');
  int vMax2 = int.parse(stdin.readLineSync()!);
  print('Indicate the distance you need to travel ?');
  int distances = int.parse(stdin.readLineSync()!);
  int firstCarSpeed = 0;
  int secondCarSpeed = 0;
  int firstCarAcceleration = 10;
  int secondCarAcceleration = 20;
  do {
    printCarsSpeed(firstCarSpeed, secondCarSpeed);
    firstCarSpeed += firstCarAcceleration;
    secondCarSpeed += secondCarAcceleration;
  } while (firstCarSpeed != vMax1 && secondCarSpeed != vMax2);

  if (firstCarSpeed != vMax1) {
    double speedAcccelerationsLeft =
        (vMax1 - firstCarSpeed) / firstCarAcceleration;
    for (int i = 0; i < speedAcccelerationsLeft; i++) {
      printCarsSpeed(firstCarSpeed, secondCarSpeed);
      firstCarSpeed += firstCarAcceleration;
    }
  } else {
    double secondSpeedAccelerationsLeft =
        (vMax2 - secondCarSpeed) / secondCarAcceleration;
    for (int i = 0; i < secondSpeedAccelerationsLeft; i++) {
      printCarsSpeed(firstCarSpeed, secondCarSpeed);
      secondCarSpeed += secondCarAcceleration;
    }
  }
  printCarsSpeed(firstCarSpeed, secondCarSpeed);
  print('Racing');
  double time = distances / vMax1;
  print('Car 1 covered the distance $distances during this time $time ');
  time = distances / vMax2;
  print('Car 2 covered the distance $distances during this time $time ');
}

void printCarsSpeed(int firstCarSpeed, int secondCarSpeed) {
  print('Car 1 speed = $firstCarSpeed in hour');
  print('Car 2 speed = $secondCarSpeed in hour');
  print('--------------------');
}
