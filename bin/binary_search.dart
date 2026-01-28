void main(List<String> arguments) {
  final numbers = [5, 90, 100, 1, 4, 2, 8, 99];
  bubbleSort(numbers);
  print(numbers);
  print('Linear Result: position= ${findBadStuffPosition(numbers, 1)}');

  print('Binary Result: position= ${findBadStuffPositionNew(numbers, 1)}');
}

int findBadStuffPosition(List<int> numbers, int badStuffNumber) {
  int position = -1;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == badStuffNumber) {
      position = i;
      break;
    }
    print(i);
  }
  return position;
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

int findBadStuffPositionNew(List<int> numbers, int badStuffNumber) {
  int left = 0;
  int right = numbers.length;

  while (left <= right) {
    int mid = ((right - left) / 2).toInt() + left;

    if (numbers[mid] == badStuffNumber) {
      return mid;
    }else if(numbers[mid]>badStuffNumber){
      right = mid-1;
    }else {
      left = mid+1;
    }
    
    print('work');
  }
  return-1;

}
