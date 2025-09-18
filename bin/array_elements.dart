import 'dart:io';

//Скласти перші два й останні два елементи масиву
// Створіть масив типу int, який міститиме 6 чисел: 5, 10, 15, 20, 25, 30.
// Складіть перші два елементи масиву.
// Складіть останні два елементи масиву.
// Виведіть результати додавання на екран.
void main(List<String> arguments) {
  List<int> array = [5, 10, 15, 20, 25, 30];
  int firstElement = array[0] + array[1];
  int secondElement = array[4] + array[5];
  print(
    'Сума перших елеметів: $firstElement , сума двох останіх елементів $secondElement',
  );
}
