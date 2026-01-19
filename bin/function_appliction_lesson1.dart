import 'dart:io';

void main(List<String> arguments) {
  List<String> employees = ['Руслан', 'Карім ', 'Марк'];
  List<int> baseSalaries = [4000, 2500, 3400];

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
  print('Середній чистий дохід :\$${averageSalary.toStringAsFixed(1)}');
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
  if (baseSalary >= 4000) {
    return (baseSalary * 0.2).toInt();
  } else {
    return (baseSalary * 0.1).toInt();
  }
}

int calculateMilitary(int baseSalary) {
  return (baseSalary * 0.05).toInt();
}

int calculateBonuses(int baseSalary) {
  if (baseSalary > 3500) {
    return (baseSalary * 0.1).toInt();
  } else if (baseSalary > 3000 && baseSalary < 3500) {
    return 200;
  } else {
    return 0;
  }
}

double calculeteAvarageSalery(List<int> salaries) {
  int sum = calculateSalarieSum(salaries);
  return sum / salaries.length;
}
