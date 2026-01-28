//масив із машин працювати з ним якщо машина до 2010 року то не обслуговуємо а якщо після 2010 то обслуговуємо і заливаємо масло до 40 літрів
void main(List<String> arguments) {
  List<Car> carArrey =[ Car(name: 'BMW', year: 2008, oilLevel: 23), Car(name: 'Audi', year: 2025, oilLevel: 35)];
  print('\n Інформація про машину :');

 for(int i=0;i<carArrey.length;i++){
   printInfo(carArrey[i].name, carArrey[i].year, carArrey[i].oilLevel);
   vehicleInspection(carArrey[i]);
   printInfo(carArrey[i].name, carArrey[i].year, carArrey[i].oilLevel);
}

}

void printInfo(String name, int year, int oilLevel) {
  print(
    '\n Назва $name , \n Рік випуску: $year, \n Кількість літрів масла: $oilLevel',
  );
}
void vehicleInspection (Car carArrey ){
  if(carArrey .year>=2010){
      print('Ми можемо залити Вам масло до 100 літрів та потрібно зачекати !');
      carArrey .oilLevel=100;
  }else{
    print('Нажаль рік випуску Вашої машини менший за 2010 тому ми не можемо залити Вам масла (');
  }
}

class Car {
  String name;
  int year;
  int oilLevel;

  Car({required this.name, required this.year, required this.oilLevel});
}
