import 'dart:io';

//Задача:
// користувач реєструє 5 поросяток
//
// Він має потім ввести імʼя та вік кожного
//
// програма має вивести інформацію про тих поросяток, вік яких більший за один рік
//
// програма має порахувати кількість поросяток імʼя яких починається на букву 'A'
//
// програма має знайти наймолодшого поросятка
void main(List<String> arguments) {
  List<String> names = [];
  List<int> ages = [];
  int pig = 5;
  for (int i = 0; i < pig; i++) {
    print('Поросятко №${i + 1} його імя :');
    String name = stdin.readLineSync()!;
    names.add(name);
    print('Вік його: ');
    int age = int.parse(stdin.readLineSync()!);
    ages.add(age);
  }
  findYoungest(names, ages);
  moreThanYear(names, ages);
}

void findYoungest(List<String> names, List<int> ages) {
  int minAge = ages[0];
  int index = 0;
  for (int i = 1; i < ages.length; i++) {
    if (ages[i] < minAge) {
      minAge = ages[i];
      index = i;
    }
  }
  print('Наймолодше поросятко: ${names[index]}, вік: ${ages[index]}');
}

void moreThanYear(List<String> names, List<int> ages) {
  print('Поросятка що старші за 1 рік:');
  for (int i = 0; i < names.length; i++) {
    if (ages[i] > 1) {
      print('${names[i]} -${ages[i]} рік ');
    }
  }
  int countA = 0;
  for (int i = 0; i < 5; i++) {
    if (names[i].startsWith('A') || names[i].startsWith('a')) {
      countA++;
    }
  }
  print('\nКількість імен на "A": $countA');
}
