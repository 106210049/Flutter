// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

// function that returns a stream
// Stream<String> getUserName() {
//   return Stream.fromIterable(['Mark', 'John', 'Smith']);
// }
// main function
void main() async {
  // you can use await for loop to get the value from stream
  print("Begin");
  await for (String name in getUserName()) {
    print(name);
  }
  print("End");
}
