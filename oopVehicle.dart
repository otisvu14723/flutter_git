class Vehicle {
  String model;
  String licensePlate;

  Vehicle(this.model, this.licensePlate);
  void startEngine() {
    print('xe $model da khoi dong');
  }

  void stopEngine() {
    print('xe $model da tat may');
  }
}

class Car extends Vehicle {
  int numberOfSeats;
  Car(String model, String licensePlate, this.numberOfSeats)
      : super(model, licensePlate);
  void Drift() {
    print('Xe $model dang drift');
  }
}

class Motorbike extends Vehicle {
  Motorbike(super.manufacturer, super.licensePlate);

  void bocDau() {
    print('xe $model dang boc dau');
  }
}

void main() {
  Car car = Car('Toyota Camry', '123-ABC', 5);
  car.startEngine();
  car.stopEngine();
  car.Drift();

  print('\n');

  Motorbike motorbike = Motorbike('Honda SH', '456-DEF');
  motorbike.startEngine();
  motorbike.stopEngine();
  motorbike.bocDau();
}
