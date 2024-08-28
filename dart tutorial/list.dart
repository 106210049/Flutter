void main() {
  List<String> drinks = ["water", "juice", "milk", "coke"];
  List<int> ages = [];
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");
  print("Is drinks Empty: " + drinks.isEmpty.toString());
  print("Is drinks not Empty: " + drinks.isNotEmpty.toString());
  print("Is ages Empty: " + ages.isEmpty.toString());
  print("Is ages not Empty: " + ages.isNotEmpty.toString());
}
