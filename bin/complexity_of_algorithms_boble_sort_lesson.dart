void main(List<String> arguments) {
  final numbers = [5, 90, 100, 1, 4, 2, 8, 90];
  bubbleSort(numbers);
  print(numbers);
}

void bubbleSort(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    for (int j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}
