//Створи функцію getWeekdayName, яка приймає число від 1 до 7 і повертає назву дня тижня (із застосуванням Pattern matching).
void main(List<String> arguments) {
  print(getWeekdayName(4));
}

String getWeekdayName(int weekdayName) => switch (weekdayName) {
  1 => 'Monday',
  2 => 'Tuesday',
  3 => 'Wednesday',
  4 => 'Thursday',
  5 => 'Friday',
  6 => 'Saturday',
  7 => 'Sunday',
  _ => 'limited quantity',
};
