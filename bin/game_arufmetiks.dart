import 'dart:io';
void main(List<String> arguments) {
  print('Hi lets play an arithmetic game');
  print('Player 1 enter a number');
  String text1=stdin.readLineSync()!;
  int numberOne = int.parse(text1);

  print('Enter the action +, -, *, /');
  var action = stdin.readLineSync();

  print('Enter the following number');
  String text2=stdin.readLineSync()!;
   int numberTwo = int.parse(text2);

  print('Player 2 solve the arithmetic action ');
  stdout.write (numberOne);
  stdout.write (action);
  stdout.write ('= $numberTwo' );


  String text=stdin.readLineSync()!;
  int player2 = int.parse(text);
  print('My answer$player2');
}