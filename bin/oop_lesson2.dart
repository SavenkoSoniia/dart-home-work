import 'dart:io';

void main(List<String> arguments) {
  Worker firstWorker = Worker(
    name: 'Віто',
    surname: 'Скалето',
    profession: 'вантажник',
    age: 27,
  );

  Worker secondWorker = Worker(
    name: 'Ото',
    surname: 'Алат',
    profession: 'вантажник',
    age: 28,
  );
  Worker thirdWorker = Worker(
    name: 'name',
    surname: 'surname',
    profession: 'profession',
    age: 23,
  );

  print('Перший робітник :\n');
  firstWorker.printOurInfo('01','Noto');

  print('Другий робітник :\n');
  secondWorker.printOurInfo('02','Poro');

  print('Третій робітник :\n');
  thirdWorker.printOurInfo('03','Peto');
}

class Worker {
  String name;
  String surname;
  String profession;

  int age;

  Worker({
    required this.name,
    required this.surname,
    required this.profession,
    required this.age,
  });

  void printOurInfo(String creditCardNumber, String name ) {
    this.name;
    
    print(
      'Імя : ${this.name} \nПрізвище: $surname \nВік: $age \nПрофесія: $profession',
    );
    print('Кредитна карточка: ');
    print(creditCardNumber);
    print('Нове імя : ');
    print(name);
  }
}
