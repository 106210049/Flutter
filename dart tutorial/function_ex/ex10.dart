// bool isEven(int number) => number % 2 == 0; // cách 1
void main() {
  bool Function(int) isEven = (int number) => number % 2 == 0; // cách 2
  print(isEven(4));
}
