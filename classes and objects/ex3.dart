void main() {
  Car newCar = Car('Toyota', 'Corolla', 2020);
  print('Brand: ${newCar.brand}, Model: ${newCar.model}, Year: ${newCar.year}');
  

  ElectricCar newElectricCar = ElectricCar('Tesla', 'Model 3', 2022, 350);
  print('Brand: ${newElectricCar.brand}, Model: ${newElectricCar.model}, Year: ${newElectricCar.year}, Battery Life: ${newElectricCar.batteryLife} km');
}

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}

class ElectricCar extends Car {
  int batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);
}

