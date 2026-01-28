void main(List<String> arguments) {
  String evidence = 'в нього великий хомяк';
  int number1 = 20;
  int number2 = 3;
  homiachok(evidence, number1, number2);
}

int homiachok(String evidence, int number1, int number2) {
  print('Олег вредний тому що $evidence');
  int sum =number1 + number2;
  print(sum);
  if (sum <= 100) {
    homiachok(evidence, sum,sum);
  }
  return sum ;
}
