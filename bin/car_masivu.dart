import 'dart:io';

// Дано два масиви в Dart:
//
// List<String> names = ['BMW X5', 'Toyota Corolla', 'Honda Civic', 'Audi A6', 'Lada Granta', 'Mercedes S-Class'];
// List<int> prices = [60000, 18000, 22000, 50000, 9000, 120000];
//
// Завдання:
//
// 🔹 Розділити ці машини на три окремі списки назв за ціною:
// • Дорогі (> 50000$)
// • Середні (20000$–50000$ включно)
// • Дешеві (< 20000$)
//
// 🔹 Вивести три списки назв машин для кожної категорії.

void main(List<String> arguments) {
  List<String> namesCar = [
    'BMW X5',
    'Toyota Corolla',
    'Honda Civic',
    'Audi A6',
    'Lada Granta',
    'Mercedes S-Class',
  ];
  List<int> pricesCar = [60000, 18000, 22000, 50000, 9000, 120000];
  print('Дорогі машини:');
  for (int i = 0; i < pricesCar.length; i++) {
    if (pricesCar[i] > 50000) {
      print('${namesCar[i]} - ${pricesCar[i]}');
    }
  }
  print('Середні машини:');
  for (int i = 0; i < pricesCar.length; i++) {
    if (pricesCar[i] >= 20000 && pricesCar[i] <= 50000) {
      print('${namesCar[i]} - ${pricesCar[i]}');
    }
  }
  print('Дешеві :');
  for (int i = 0; i < pricesCar.length; i++) {
    if (pricesCar[i] < 20000) {
      print('${namesCar[i]} - ${pricesCar[i]}');
    }
  }
}

