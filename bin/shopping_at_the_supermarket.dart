import 'dart:io';

//Оптимізація покупок у супермаркеті
// Опис завдання:
// Ти в супермаркеті з обмеженим бюджетом і списком товарів з їхніми цінами. Твоє завдання - вибрати товари, щоб витратити максимум грошей,
// але не перевищити бюджет.
// Вхідні дані:
// Масив цін товарів: int[] prices = {100, 50, 200, 150, 75};
// Ціле число budget = 300;
// (максимальний бюджет).
// Завдання:
// Вибрати товари з масиву, щоб їхня загальна вартість не перевищила бюджет. Якщо перевищення неможливе, потрібно вивести "Бюджет перевищено".
// Зробити так, щоб користувач не міг вводити непотрібні числа.
// Дати можливість користувачеві піти з магазину в буд-який момент
void main(List<String> arguments) {
  print(
    'Привіт у тебе є буджет 300 грн  Тобі потрібно вбрати товари щоб витратити максимальну кільість грошей,але не перевищити бюджет! ',
  );
  int money = 300;
  List<int> goods = [100, 50, 200, 150, 75];
  List<int> cart = [];
  do {
    printMoney(money);
    printGoods(goods);
    print('Оберіть номер товарів які ви вибрали. Або введіть 0 для виходу');
    int num = userInput();
    if(num==0){
      print('Дякуємо що відвідали наш магазин заходьте ще !');
      break;
    }
    num--;
    print('Ви обрали товар за ціною : ${goods[num]}');
    if (money >= goods[num]) {
      money -= goods[num];
      purchase(cart, goods, num);
    } else {
      print('Нажаль сума покупки перевищила ваш бюджет');
    }
  } while (money > 0);
}

int userInput() {
  int num = int.parse(stdin.readLineSync()!);
  while (num < 0 || num > 6) {
    print('введіть число від 1 до 6 ');
    num = int.parse(stdin.readLineSync()!);
  }
  return num;
}

void purchase(List<int> cart, List<int> goods, int num) {
  cart.add(goods[num]);
  goods.removeAt(num);
  printCart(cart);
}

void printMoney(int money) {
  print('Ваш бюджет становить $money');
}

void printCart(List<int> cart) {
  print('Корзина ваших товарів');
  printPrises(cart);
}

void printGoods(List<int> goods) {
  print('Товари магазину :');
  printPrises(goods);
}

void printPrises(List<int> prises) {
  for (int i = 0; i < prises.length; i++) {
    print('-${prises[i]}');
  }
}
