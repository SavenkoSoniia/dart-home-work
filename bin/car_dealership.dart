import 'dart:io';

//Програма має проаналізувати базові зарплати менеджерів, податки, штрафи та премії, щоб розрахувати їхній чистий дохід.
//Умови Розрахунку (Спрощені)
// Податки та Утримання:
// Податок на Дохід: 10% від базової зарплати для всіх.
// Штраф/Внесок: Фіксований внесок у розмірі $50 для всіх.
// Премії (Бонуси):
// Якщо Обсяг Продажів $100,000 і більше, менеджер отримує $500 премії.
// Якщо Обсяг Продажів менше $100,000, премія не нараховується.
//Завдання для Програми
// Програма повинна виконати наступні кроки:
// Розрахувати загальний фонд базових зарплат.
// Знайти менеджерів з найвищими та найнижчими базовими зарплатами.
// Обчислити чистий дохід кожного менеджера (Чистий Дохід = Базова ЗП - Податок - Штраф + Премія).
// Порахувати середній чистий дохід по автосалону.
//Очікуваний Результат (Потрібно Розрахувати)
// Базові Зарплати: Олег 4500, Христина 3000, Андрій 3500
// Загальна сума базових зарплат: [ Розрахуйте тут ]
// Найбільша базова зарплата: [ Розрахуйте тут ]
// Найменша базова зарплата: [ Розрахуйте тут ]
// Чисті доходи:
// Олег: [ Розрахуйте тут ]
// Христина: [ Розрахуйте тут ]
// Андрій: [ Розрахуйте тут ]
// Середній чистий дохід: [ Розрахуйте тут ]

void main(List<String> arguments) {
  List<String> employees = ['Олег', 'Христина', 'Андрій'];
  List<int> baseSalaries = [4500, 3000, 3500];
  print('Зарплати :');
  printSalaries(employees, baseSalaries);

  print(
    'Загальна сума зарплат без податків : \$${calculateSalarieSum(baseSalaries)}',
  );
  print('Найбільша зарплатня :\$${getMaxSalaries(baseSalaries)}');
  print('Найменша зарплатня : \$${getMinSalaries(baseSalaries)}');

  List<int> netSalaries = getNetSalaries(baseSalaries);
  printSalaries(employees, netSalaries);

  double averageSalary = calculeteAvarageSalery(netSalaries);
  print('Середній чистий дохід зарплат :\$${averageSalary.toStringAsFixed(1)}');
}

void printSalaries(List<String> employees, List<int> salaries) {
  for (int i = 0; i < employees.length; i++) {
    print('${employees[i]} ${salaries[i]}');
  }
}

int calculateSalarieSum(List<int> salaries) {
  var sum = 0;
  for (var salary in salaries) {
    sum += salary;
  }

  return sum;
}
int getMaxSalaries(List<int> salaries) {
  var max =salaries[0];
  for (int i = 1; i < salaries.length; i++) {
    if (salaries[i] > max) {
      max = salaries[i];
    }
  }

  return max;
}
int getMinSalaries(List<int> salaries) {
  var min = salaries[0];
  for (int i = 1; i < salaries.length; i++) {
    if (salaries[i] < min) {
      min = salaries[i];
    }
  }

  return min;
}
List<int> getNetSalaries(List<int> salaries) {
  List<int> netSalaries = [];
  for (var salary in salaries) {
    int taxes = calculateTaxes(salary);

    int military = calculateMilitary(salary);
    int bonuses = calculateBonuses(salary);

    int net = salary - taxes - military + bonuses;
    netSalaries.add(net);
  }
  return netSalaries;
}
int calculateTaxes(int baseSalary) {
  if (baseSalary >= 100) {
    return (baseSalary * 0.5).toInt();
  } else {
    return 0;
  }
}

int calculateMilitary(int baseSalary) {
  return (baseSalary * 0.05).toInt();
}

int calculateBonuses(int baseSalary) {
  if (baseSalary > 3500) {
    return (baseSalary * 0.1).toInt();
  } else {
    return 0;
  }
}
double calculeteAvarageSalery(List<int> salaries) {
  int sum = calculateSalarieSum(salaries);
  return sum / salaries.length;
}