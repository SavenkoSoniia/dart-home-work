void main(List<String> arguments) {
  print(getWeatherByNumber(2));
}

String getWeatherByNumber(int weatherNumber) {
  switch (weatherNumber) {
    case 0:
      return 'Sunny';
    case 1:
      return 'Rain';
    case 2:
      return 'Cloud';
    default:
      return 'no weather';
  }
}

String getWeatherByNumberNew(int weatherNumber) =>
    switch (weatherNumber){
      0 => 'Sunny',
      1 => 'Rain',
      2 => 'Cloud',
      _ => 'no weather',
    };
