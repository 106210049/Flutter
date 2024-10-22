import 'dart:math';

class Complex_number {
  double _real;
  double _im;

  Complex_number(this._real, this._im);
  set real(double real) => _real = real;
  set image(double im) => _im = im;

  double get real => _real;
  double get image => _im;

  Complex_number operator +(Complex_number other) {
    return Complex_number(this._real + other._real, this._im + other._im);
  }

  Complex_number operator -(Complex_number other) {
    return Complex_number(this._real - other._real, this._im - other._im);
  }

  bool operator >(Complex_number other) {
    double number1 = sqrt(pow(this._real, 2) + pow(this._im, 2));
    double number2 = sqrt(pow(other._real, 2) + pow(other._im, 2));
    if (number1 > number2) {
      return true;
    } else {
      return false;
    }
  }

  bool operator <(Complex_number other) {
    double number1 = sqrt(pow(this._real, 2) + pow(this._im, 2));
    double number2 = sqrt(pow(other._real, 2) + pow(other._im, 2));
    if (number1 < number2) {
      return true;
    } else {
      return false;
    }
  }

  bool operator ==(Object other) {
    if (other is Complex_number) {
      return this._real == other._real && this._im == other._im;
    }
    return false;
  }
}

void main() {
  Complex_number complex_number1 = Complex_number(2, 2);
  Complex_number complex_number2 = Complex_number(4, 5);

  // Thực thi toán tử cộng
  Complex_number sum = complex_number1 + complex_number2;
  print("Sum is (${sum.real}, ${sum.image})");

  // Thực thi toán tử trừ
  Complex_number difference = complex_number1 - complex_number2;
  print("Difference is (${difference.real}, ${difference.image})");

  // Thực thi toán tử >
  bool greater = complex_number1 > complex_number2;
  print("Is complex_number1 > complex_number2? $greater");

  // Thực thi toán tử <
  bool lesser = complex_number1 < complex_number2;
  print("Is complex_number1 < complex_number2? $lesser");

  // Thực thi toán tử ==
  bool equal = complex_number1 == complex_number2;
  print("Is complex_number1 == complex_number2? $equal");
}
