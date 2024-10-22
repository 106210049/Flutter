import 'dart:io';

class Student {
  String? name;
  int? age;
  int? rollNumber;

  Student(String name, int age, [int rollNumber = 12]) {
    this.name = name;
    this.age = age;
    this.rollNumber = rollNumber;
  }
  // Parameterized Constructor In Dart:
  // Student(this.name, this.age, this.rollNumber);
  // Student() {
  //   this.name = "Long";
  // }
  // Parameterized Constructor With Named Parameters In Dart
  // Student({String? name, int? age, int? rollNumber}) {
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }

  // Student({String? name = "John", int? age = 0}) {
  //   this.name = name;
  //   this.age = age;
  // }
  // Student() {
  //   print("This is a default constructor");
  // }

  // Named Constructor
  // Student.namedConstructor(String name, int age, int rollNumber) {
  //   this.name = name;
  //   this.age = age;
  //   this.rollNumber = rollNumber;
  // }
  void enterValue() {
    print("Enter name:");
    this.name = stdin.readLineSync();
    print("Enter age: ");
    this.age = int.parse(stdin.readLineSync()!);
    print("Enter roll number: ");
    this.rollNumber = int.tryParse(stdin.readLineSync()!);
  }

  void display() {
    print("Name: ${this.name}");
    print("Age: ${this.age}");
    print("Roll Number: ${this.rollNumber}");
  }
}

void main() {
  // Here student is object of class Student.
  Student student = Student("John", 19);
  // Student student = Student.namedConstructor("John", 20, 1);

  student.display();
  student.enterValue();
  student.display();
}
