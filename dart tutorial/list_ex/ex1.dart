import 'dart:io';

void main() {
  String? name;
  List<String> names = [];
  while (true) {
    print("Enter name: ");
    name = stdin.readLineSync();
    if (name!.trim() == "no") {
      break;
    } else {
      names.add(name);
    }
  }
  print("Print name in list:");
  for (name in names) print(name);
}
