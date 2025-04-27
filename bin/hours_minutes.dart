import 'dart:io';

//Напишіть програму, яка приймає на вхід віконний час - годинник і хвилини. Програма повинна визначити, в який час дня:
//
// Ранок - з 6:00 до 11:59.
// День - з 12:00 до 17:59.
// Вечір - з 18:00 до 21:59.
// Ніч - з 22:00 до 5:59.
// Програма має визначити, у який час дня потрапляє введений час, і вивести відповідне повідомлення.
//
// Умови:
// Користувач вводить годину (ціле число від 0 до 23) і хвилини (ціле число від 0 до 59).
// Програма повинна коректно визначати період часу (ранок, день, вечір, ніч).

void main(List<String> arguments) {
  print('Hello keep time an minutes and Im guessing what time of day it is )');
  print('Enter the hour');
  int hour = int.parse(stdin.readLineSync()!);
  print('Enter a minute');
  int minutes = int.parse(stdin.readLineSync()!);
  if (hour > 24 || minutes > 60 || hour < 0 || minutes < 0) {
    print('There is no such hour ');
  } else if (hour > 6 && hour < 12) {
    print('Its a morning');
  } else if (hour > 12 && hour < 16) {
    print('Its a day ');
  } else if (hour > 18 && hour < 22) {
    print('Its a evening');
  } else if (hour > 22 || hour < 6) {
    print('Its a night ');
  }
}
