void main() {
  Car newCar = Car('Toyota', 'Corolla', 2020);
  print('Brand: ${newCar.brand}, Model: ${newCar.model}, Year: ${newCar.year}');
}

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);
}
