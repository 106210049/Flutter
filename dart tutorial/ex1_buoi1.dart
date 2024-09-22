// Họ và tên: Hoàng Bảo Long
// MSSV: 106210049
// Lớp: 21KTMT
import 'dart:io';

double Sum(double a, double b) {
  return a + b;
}

double Sub(double a, double b) {
  return a - b;
}

double Mul(double a, double b) {
  return a * b;
}

double Div(double a, double b) {
  return a / b;
}

void main() {
  double a, b;
  print("Enter a: ");
  a = double.parse(stdin.readLineSync()!);
  print("Enter b:");
  b = double.parse(stdin.readLineSync()!);
  print("Sum of a and b is: ${Sum(a, b)}");
  print("Subtraction of a and b is: ${Sub(a, b)} ");
  print("Multiple of a and b is: ${Mul(a, b)}");
  print("Division of a and  b is: ${Div(a, b)}");
}
