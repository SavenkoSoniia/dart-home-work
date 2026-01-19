//Створіть клас Programmer або будь-який інший на ваш вибір. Додайте поля, які на вашу думку найкраще
// описують цей об'єкт (наприклад: ім'я, вік, спеціалізація, зарплата тощо).
// Додатково:
// - Створіть метод, який змінює одне з полів.
// Наприклад: підвищити зарплату, змінити спеціалізацію або статус працевлаштування.
//
// - Створіть об'єкт вашого класу та викличте метод зміни та виведіть оновлену інформацію в консоль.
void main(List<String> arguments) {
  Programmer firstProgrammer = Programmer(
    name: 'Jan',
    surname: 'Fail',
    age: 35,
    vacancy: 'Vibe encoder',
    salary: 10000,
  );

  print('Робітник офісу:');
  printInfo(
    firstProgrammer.name,
    firstProgrammer.surname,
    firstProgrammer.vacancy,
    firstProgrammer.age,
    firstProgrammer.salary,
  );

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

  print('\n Робітник дистанційного офісу:');
  printInfo(
    secondProgrammer.name,
    secondProgrammer.surname,
    secondProgrammer.vacancy,
    secondProgrammer.age,
    secondProgrammer.salary,
  );
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

void updateVacancy(String newVacancy, Programmer programmer) {
  programmer.vacancy = newVacancy;
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
}
