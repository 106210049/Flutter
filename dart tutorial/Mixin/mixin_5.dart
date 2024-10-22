import 'dart:io';

mixin People {
  String? name;
  int? old;
}

class Student with People {
  String? school;
  int? grade;
  Student(this.grade, this.school);
  void enterInf() {
    print("Enter name: ");
    name = stdin.readLineSync();
    print("Enter old: ");
    old = int.parse(stdin.readLineSync()!);
    print("Enter Grade: ");
    grade = int.parse(stdin.readLineSync()!);
  }

  void displayInf() {
    print("Student name: $name");
    print("Student old: $old");
    print("Student Grade: $grade");
  }
}

void main() {
  Student student = Student(1, "ABC");
  student.displayInf();
  student.enterInf();
  student.displayInf();
}
