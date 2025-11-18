import 'dart:io';

void main(List<String> arguments) {
  List<String> deserts = ['Морозиво', 'Цукерка', 'Вафля', 'Батончик'];
  try {
    chooseDesert(deserts);
  } on FormatException {
    print('Помилка вводу. Можна вводити лише цифри');
  } on RangeError {
    print(
      'Помилка вводу. ВВедіть число в діапазоні від 0 до ${deserts.length}',
    );
  } catch (error) {
    print('Помилка: $error');
  } finally {
    print('Вибір десерту завершено !');
  }

  print('Їсти десерти - це добре , але треба мати міру.');
}

void chooseDesert(List<String> deserts) {
  print('Оберіть десерт ');

  String userChoice = stdin.readLineSync()!;
  int desertIndex = int.parse(userChoice);

  if(desertIndex==3){
    throw Exception('Батончиків сьогодні немає');
  }

  String desert = deserts[desertIndex];
  print('Користувач обрав десерт $desert');
}
