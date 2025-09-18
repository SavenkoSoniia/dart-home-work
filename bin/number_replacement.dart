import 'dart:io';

//Замінити відємні елементи масиву на 0
void main(List<String> arguments) {
  List<int> numbers = [3, -2, 5, -8, 7];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] < 0) {
      numbers[i] = 0;
    }
  }
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
}
