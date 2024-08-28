f1(var a, var b, var printmessage) {
  var c = a + b;
  printmessage(c);
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
}
