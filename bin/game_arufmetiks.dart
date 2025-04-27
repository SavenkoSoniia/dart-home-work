import 'dart:io';

void main(List<String> arguments) {
  print('Hi lets play an arithmetic game');
  print('Player 1 enter a number');
  int firstNumber = int.parse(stdin.readLineSync()!);

  print('Enter the action +, -, *, /');
  var action = stdin.readLineSync();

  print('Enter the following number');
  int secondTwo = int.parse(stdin.readLineSync()!);

  print('Player 2 solve the arithmetic action ');
  stdout.write(firstNumber);
  stdout.write(action);
  stdout.write('= $secondTwo');

  int secondPlayerAnswer = int.parse(stdin.readLineSync()!);
  print('My answer$secondPlayerAnswer');
}
