import 'dart:math';

int power(int base, int exponent) {
  return pow(base, exponent).toInt();
}

void main() {
  print(power(5, 3)); // Output: 125
}
