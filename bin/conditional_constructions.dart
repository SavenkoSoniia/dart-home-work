import 'dart:io';
//Напишіть програму, яка приймає три числа: рік, місяць і день. Програма має визначити, чи є вказана дата коректною.
//
// Умови:
//
// Рік має бути більшим за 0.
//
// Місяць має бути від 1 до 12.
//
// День має бути в діапазоні, відповідному до місяця:
//
// Для місяців з 31 днем: січень, березень, травень, липень, серпень, жовтень, грудень.
//
// Для місяців з 30 днями: квітень, червень, вересень, листопад.
//
// вводимо:
// 2000
// 2
// 29
//
// виводимо:
// Дата коректна

void main(List<String> arguments) {
  print('Enter the year :');
  int year = int.parse(stdin.readLineSync()!);
  if (year > 0) {
    print('Okay, lets continue to enter the month:');
    int month = int.parse(stdin.readLineSync()!);
    if (month > 1 || month < 13) {
      print('Okay, lets continue to enter the day');
      int day = int.parse(stdin.readLineSync()!);
      if (day > 1 || day < 32) {
        print('Thank you, everything is fine');
      } else {
        print('Incorrect entry try again ');
      }
    } else {
      print('Incorrect entry try again ');
    }
  } else {
    print('Incorrect input try again');
  }
  print('Your date is correct ');
}
