void main() {
  List<String> Friends = ["An", "Au", "Hoang", "Long"];
  List<String> name =
      Friends.where((element) => element.startsWith("A")).toList();
  print(name);
}
