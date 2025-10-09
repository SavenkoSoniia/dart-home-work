import 'dart:io';

// Опис завдання:
// Напишіть програму, яка  запитує у користувача розмір масиву та дозволяє йому заповнити цей масив числами.
// Після заповнення, програма повинна вивести масив на екран.
//
// Вхідні дані:
//
// Розмір масиву.
// Елементи масиву (вводяться користувачем).
// Вихід:
// Вивести заповнений масив на екран.
void main(List<String> arguments) {
  print(
    'Привіт напиши розмір масиву з кількох елементів він буде складатись ?',
  );
  int arraySize = int.parse(stdin.readLineSync()!);
  print('Гаразд тепер заповний цей масив числами :');
  List<int> userArray = [];
  for (int i = 0; i < arraySize; i++) {
    int element = int.parse(stdin.readLineSync()!);
    userArray.add(element);
  }
  print('Ось твій массив :');
  for (int i = 0; i < userArray.length; i++) {
    print(userArray[i]);
  }
}
