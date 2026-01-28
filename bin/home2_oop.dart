// Що треба зробити:
// Створи мінімум 2 власні методи, які змінюють або використовують поля об’єкта.
// Наприклад:
//
// - підвищити зарплату;
//
// - змінити спеціалізацію;
//
// - показати опис (метод, який повертає  рядок з інформацією);
//
// - прокачати скіл або змінити статус.
//
// В методах використовуй this, щоб посилатися на поля об’єкта.
//
// Створи об’єкт класу, виклич методи, і виведи результат у консоль.

void main(List<String> arguments) {
  Programmer firstProgrammer = Programmer(
    name: 'Jan',
    surname: 'Fail',
    age: 35,
    vacancy: 'Vibe encoder',
    salary: 10000,
  );

  print('Перший робітник :\n');
  firstProgrammer.printOurInfo('01','Solo');

  updateSalary(145908, firstProgrammer);
  updateVacancy('Manager', firstProgrammer);
  print('\n Після зміни зарплатні та вакансії у офісі:');
  printInfo(
    firstProgrammer.name,
    firstProgrammer.surname,
    firstProgrammer.vacancy,
    firstProgrammer.age,
    firstProgrammer.salary,
  );


  Programmer secondProgrammer = Programmer(
    name: 'Gan',
    surname: 'Old',
    age: 23,
    vacancy: 'Novice manager',
    salary: 8000,
  );

  print('Другий робітник дистанційного офісу:\n');
  secondProgrammer.printOurInfo('02','Poro');

  updateSalary(12345, secondProgrammer);
  print('\n Робітник дистанційного офісу після зміни зарплатні:');
  printInfo(
    secondProgrammer.name,
    secondProgrammer.surname,
    secondProgrammer.vacancy,
    secondProgrammer.age,
    secondProgrammer.salary,
  );
}

void updateSalary(int newSalary, Programmer programmer) {
  programmer.salary = newSalary;
}
void printInfo(
    String name,
    String surname,
    String vacancy,
    int age,
    int salary,
    ) {
  print(
    'Імя:$name \nПрізвище:$surname \nВік:$age  \nПрофесія:$vacancy \nЗарплатня:$salary',
  );
}

void updateVacancy(String newVacancy, Programmer programmer) {
  programmer.vacancy = newVacancy;
}

class Programmer {
  String name;
  String surname;
  int age;
  String vacancy;
  int salary;

  Programmer({
    required this.name,
    required this.surname,
    required this.age,
    required this.vacancy,
    required this.salary,
  });

  void printOurInfo(String creditCardNumber, String surname ) {
    this.surname;

    print(
      'Імя : $name \nПрізвище: ${this.surname} \nВік: $age',
    );
    print('Кредитна карточка: ');
    print(creditCardNumber);
    print('Нове прізвище : ');
    print(surname);
  }
}
