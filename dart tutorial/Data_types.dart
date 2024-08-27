void main() {
// Declaring Variables
  int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;

// For Sum
  num sum = num1 + num2 + num3 + num4;

// Printing Info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");
  double price = 1130.2232323233233; // valid.
  print(price.toStringAsFixed(2));

  String schoolName = "Diamond School";
  String address = "New York 2140";

// Printing Values
  print("School name is $schoolName and address is $address");
  String multiLineText = '''
This is Multi Line Text
with 3 single quote
I am also writing here.
''';

// Multi Line Using Double Quotes
  String otherMultiLineText = """
This is Multi Line Text
with 3 double quote
I am also writing here.
""";

// Printing Information
  print("Multiline text is $multiLineText");
  print("Other multiline text is $otherMultiLineText");

  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}");
  int intvalue = int.parse(strvalue);
  print("Value of intvalue is $intvalue");
// this will print data type
  print("Type of intvalue is ${intvalue.runtimeType}");

  bool isMarried = true;
  print("Married Status: $isMarried");
}
