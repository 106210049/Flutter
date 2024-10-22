import 'dart:io';

mixin ElectricVariant {
  double? battery;
  double? speed;
  void electricVariant() {
    print('This is an electric variant');
  }

  void enterInf_Electric() {
    print("Enter battery: ");
    battery = double.tryParse(stdin.readLineSync()!);
    print("Enter Speed: ");
    speed = double.tryParse(stdin.readLineSync()!);
  }

  void printInf_Electric() {
    print("Battery: $battery W");
    print("Speed: $speed km/h");
  }
}

mixin PetrolVariant {
  double? fules;
  double? speed;
  void petrolVariant() {
    print('This is a petrol variant');
  }

  void enterInf_Petrol() {
    print("Enter fules: ");
    fules = double.tryParse(stdin.readLineSync()!);
    print("Enter Speed: ");
    speed = double.tryParse(stdin.readLineSync()!);
  }

  void printInf_Petrol() {
    print("fules: $fules liter");
    print("Speed: $speed km/h");
  }
}

// with is used to apply the mixin to the class
class Car with ElectricVariant, PetrolVariant {
  // here we have access of electricVariant() and petrolVariant() methods
}

void main() {
  var car = Car();
  car.electricVariant();
  car.enterInf_Electric();
  car.printInf_Electric();
  car.petrolVariant();
  car.enterInf_Petrol();
  car.printInf_Petrol();
}
