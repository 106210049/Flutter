import 'dart:io';

class Rectangle {
  //properties of rectangle
  double? length;
  double? breadth;

  //functions of rectangle
  double area() {
    return length! * breadth!;
  }

  void enterValue() {
    print("Enter value of length: ");
    length = double.parse(stdin.readLineSync()!);
    print("Enter value of breadth: ");
    breadth = double.tryParse(stdin.readLineSync()!);
  }
}

void main() {
  //object of rectangle created
  Rectangle rectangle = Rectangle();

  //setting properties for rectangle
  // rectangle.length = 10;
  // rectangle.breadth = 5;
  rectangle.enterValue();
  //functions of rectangle called
  print("Area of rectangle is ${rectangle.area()}.");
}
