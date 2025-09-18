import 'dart:io';
import 'dart:math';

//Є 10 комірок, одна з яких випадковим чином містить скарб.
// Користувач може досліджувати комірки одну за одною, і програма буде говорити, якщо скарб знайдено.
// Програма виводить кожну перевірену клітинку і закінчується, коли скарб знайдено.
void main(List<String> arguments) {
  int treasure = 10;
  print(
    'Привіт у вас є $treasure комірок у одній із них є скарб вибивай прслідовно кожну з комірок і отримаєш скарб',
  );
  int random = Random().nextInt(9) + 1; // Value is >= 50 and < 150.;
  while (treasure >= 1) {
    print('комірка номер $treasure');
    stdin.readLineSync()!;
    treasure--;
    if (treasure == random) {
      print('Вітаємо ви виграли скарб !!!');
      break;
    }
  }
}
