import 'dart:io';

//Напиши програму на Dart, яка:
// Створює масив цілих чисел.
// Знаходить середнє арифметичне всіх елементів.
// Виводить повідомлення:
// "Більше 10", якщо середнє > 10
// "Менше або дорівнює 10" — в іншому випадку
// функцію, що обчислює середнє.
void main(List<String> arguments) {
  List<int> arrayNumber = [4, 67, 87, 43, 2, 5, 10, 35];
  numberAverage(arrayNumber);
}

void numberAverage(List<int> arrayNumber) {
  double sum = 0;
  for (int i = 0; i < arrayNumber.length; i++) {
    sum += arrayNumber[i];
    sum /= arrayNumber.length;
  }
  if(sum>10){
    print('Середнє число більше 10');
  }else if(sum==10){
    print('Середнє арифметичне дорінює 10');
  }else{
    print('Середнє арифметичне менше 10');
  }
}
