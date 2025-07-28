import 'dart:io';

// в тебе є масив балів учнів, які вони отримали за олімпіаду з математики.
// випиши топ 3 цих учнів

void main(List<String> arguments) {
  List<int> assessments = [13, 15, 21, 90, 100, 1, 80];
  print('Топ бали за олімпіаду :');
  int number = 0;
  int number1 = 0;
  int number2 = 0;
  for (int i = 0; i < assessments.length; i++) {
    if (assessments[i] > number) {
      number = assessments[i];
    }
    assessments.remove(number);
  }
  for (int i = 0; i < assessments.length; i++) {
    if (assessments[i] > number1) {
      number1 = assessments[i];
    }
    assessments.remove(number1);
  }
  for (int i = 0; i < assessments.length; i++) {
    if (assessments[i] > number2) {
      number2 = assessments[i];
    }
  }
  print('Перше місце :$number;\nДруге місце: $number2;\nТретє місце: $number1');
}
