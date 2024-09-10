import 'dart:io';

class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  void changeGear(int newValue) {
    currentSpeed = newValue;
  }

  void display() {
    print("Color: $color");
    print("Size: $size");
    print("Current Speed: $currentSpeed");
  }

  void enterValue() {
    print("Enter color:");
    color = stdin.readLineSync();
    print("Enter size: ");
    size = int.parse(stdin.readLineSync()!);
    print("Enter speed: ");
    currentSpeed = int.tryParse(stdin.readLineSync()!);
  }
}

void main() {
  // Here bicycle is object of class Bicycle.
  Bicycle bicycle = Bicycle();
  // bicycle.color = "Red";
  // bicycle.size = 26;
  // bicycle.currentSpeed = 0;
  bicycle.enterValue();
  bicycle.display();
  bicycle.changeGear(5);
  bicycle.display();
}
