void main() {
  List<String> drinks = ["water", "juice", "milk", "coke"];
  List<int> ages = [];
  // List<String> names = [];
  // names[0] = "Long";
  // names[1] = "Hoang";
  // for (String name in names) print(name);
  print("First element of the List is: ${drinks.first}");
  print("Last element of the List is: ${drinks.last}");
  print("Is drinks Empty: " + drinks.isEmpty.toString());
  print("Is drinks not Empty: " + drinks.isNotEmpty.toString());
  print("Is ages Empty: " + ages.isEmpty.toString());
  print("Is ages not Empty: " + ages.isNotEmpty.toString());

  for (String drink in drinks) print(drink);
  List<String> names = ["Raj", "John", "Rocky"];
  List<String> names2 = ["Mike", "Subash", "Mark"];

  List<String> allNames = [...names, ...names2];
  print(allNames);
  for (String name in names) print(name);
}
