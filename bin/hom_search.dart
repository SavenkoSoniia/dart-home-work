void main(List<String> arguments) {
  final numbers = [35, 12, 28,47,20,21];

  // print(numbers[0]); 12 35 28 47 20 21
  //
  //
  //   int temp = numbers[0];
  //   numbers[0] = numbers[ 1];
  //   numbers[1] = temp;
  //
  //
  // print('${numbers[0]}; ${numbers[1]}');
  //
  // print('${numbers[0]}; ${numbers[1]}; ${numbers[2]}');
  //
  // print('${numbers[0]}; ${numbers[1]}; ${numbers[2]}; ${numbers[3]}');



  sorting(numbers);
}

void sorting (List<int> numbers){
  for(int i=0 ;i<numbers.length;i++){
    print('Відсортована зона $i :');
    for(int j=0; j<i+1;j++) {
      if (numbers[j] > numbers[i]) {
        int temp = numbers[j];
        numbers[j] = numbers[i];
        numbers[i] = temp;
      }
       print(numbers[j]);
    }
  }
}