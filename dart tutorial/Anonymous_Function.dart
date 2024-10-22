f1(var a, var b, var printmessage) {
  var c = a + b;
  printmessage(c);
}

void test(void Function(int) action) {
  final list = [1, 2, 3, 4, 5];
  for (final item in list) action(item);
}

void main() {
  f1(1, 2, (x) => print('Tổng là: $x'));
  f1(1, 2, (z) => print('Tổng là: $z'));
  const fruits = ["Apple", "Mango", "Banana", "Orange"];

  fruits.forEach((fruit) {
    print(fruit);
  });

  var cube = (int number) => number * number * number;

  print("The cube of 2 is ${cube(2)}");
  print("The cube of 3 is ${cube(3)}");

  // test((int value) {
  //   print("Number $value");
  // });

  test((int value) =>
      print("$value")); // hàm action sẽ tương ứng với hàm ẩn in giá trị value
}
