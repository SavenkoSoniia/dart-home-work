import 'dart:io';

//Користувач повинен додавати числа до суми, починаючи з 0, щоб дійти до 100.
// Кожен хід він може додати 1, 5 або 10. Програма закінчується, коли сума стає рівною 100.
void main(List<String> arguments) {
  int sum = 0;
  print('Привіт щоб отримати суму 100 ви повинні додавати число 1,5 або 10 ');
  while (sum <= 100) {
    int userNumber = int.parse(stdin.readLineSync()!);
    if (userNumber == 1 || userNumber == 5 || userNumber == 10) {
      sum += userNumber;
      print('на даний момент сума : $sum');
    } else {
      print('Ви ввели не коректне введення( спробуйте ще ...(Потрібно 1,5,10)');
    }
  }
  print('Ваша сума досяла 100');
}
