import 'dart:developer';
import 'dart:io';

const flutter = 'Flutter the best ';

void main() {
  final hello = getHelloFromServer();
  print(hello);

  dynamic sun = ' sunny';
  print(sun.length);

  sun = 1003;
  print(sun);

  Object hellos = flutter;
  print(hellos);
  hellos=11000;
  print(hellos);
}

String getHelloFromServer() {
  print('Get from server...');
  return 'Hello from server!';
}
