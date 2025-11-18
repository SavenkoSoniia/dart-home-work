enum SmartphoneColor { white, black, green, red }

void main() {
  SmartphoneColor color = SmartphoneColor.green;

  print(SmartphoneColor.values);

  print(color.index);

  print('Колір нашого смартфону : ${getSmartphoneColor(color)}');
}

String getSmartphoneColor(SmartphoneColor color) {
  switch (color) {
    case SmartphoneColor.white:
      return 'Білий';
    case SmartphoneColor.black:
      return 'Чорний';
    case SmartphoneColor.green:
      return 'Зелений';
    case SmartphoneColor.red:
    return'Червоний';
  }
}
