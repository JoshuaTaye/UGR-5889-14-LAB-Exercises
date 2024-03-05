class ElectricCar extends Car {
  int batteryLife;
  ElectricCar(String brand, String model, int year, this.batteryLife): super(brand, model, year);
}
