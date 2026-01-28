import 'dart:io';

void main(List<String> arguments) {
  Worker firstWorker = Worker(
      name: 'Віто', surname: 'Скалето', profession: 'вантажник', age: 27);

  Worker secondWorker = Worker(
      name: 'Ото', surname: 'Алат', profession: 'вантажник', age: 28);


  print('Перший робітник :\n');
  printInfo(firstWorker.name, firstWorker.surname, firstWorker.profession,
      firstWorker.age);
  print('Другий робітник :\n');
  printInfo(secondWorker.name, secondWorker.surname, secondWorker.profession,
      secondWorker.age);
}

void printInfo(String name, String surname, String profesion, int age) {
  print('Імя : $name \nПрізвище: $surname \nВік: $age \nПрофесія: $profesion');
}


class Worker {
  String name;
  String surname;
  String profession;

  int age;

  Worker({required this.name, required this.surname, required this.profession, required this.age});

}
