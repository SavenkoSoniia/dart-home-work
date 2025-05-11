//Запитує у користувача годину (0-23) і хвилини (0-59).
// Визначає, в який час доби він прокинувся (ранок, день, вечір, ніч).
// Виводить повідомлення з рекомендацією, виходячи з часу:
// Ранок (6:00-11:59): «Доброго ранку! Саме час для смачного сніданку.»
// День (12:00-17:59): «Доброго дня! Гарний момент для перерви на каву.»
// Вечір (18:00-21:59): «Добрий вечір! Можна відпочити після роботи.»
// Ніч (22:00-5:59): «Доброї ночі! Може, варто лягти спати?»
import 'dart:io';


void main(List<String> arguments) {
  print('Hello, enter the time and minutes and the alarm will notify you)');
  print('Enter the hour');
  int hour = int.parse(stdin.readLineSync()!);
  print('Enter a minute');
  int minutes = int.parse(stdin.readLineSync()!);
  if (hour > 24 || minutes > 60 || hour < 0 || minutes < 0) {
    print('There is no such hour ');
  } else if (hour > 6 && hour < 12) {
    print('Good morning! Its time for a delicious breakfast.');
  } else if (hour > 12 && hour < 16) {
    print('Good afternoon! A good time for a coffee break ');
  } else if (hour > 18 && hour < 22) {
    print('Good evening! You can relax after work.');
  } else if (hour > 22 || hour < 6) {
    print('Good night! Maybe we should go to bed? ');
  }
}