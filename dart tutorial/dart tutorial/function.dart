void printInfo({String? name, String? gender}) {
  print("Hello $name your gender is $gender.");
}

void add(int num1, int num2, [int num3 = 0]) {
  int sum;
  sum = num1 + num2 + num3;

  print("The sum is $sum");
}

void printInfo2({required String name, required String gender}) {
  print("Hello $name your gender is $gender.");
}

void main() {
  add(10, 20);
  add(10, 20, 30);
  // you can pass values in any order in named parameters.
  printInfo(gender: "Male", name: "John");
  printInfo(name: "Sita", gender: "Female");
  printInfo(name: "Reecha", gender: "Female");
  printInfo(name: "Reecha", gender: "Female");
  printInfo(name: "Harry", gender: "Male");
  printInfo(gender: "Male", name: "Santa");

  printInfo2(gender: "Male", name: "John");
  printInfo2(gender: "Female", name: "Suju");
}
