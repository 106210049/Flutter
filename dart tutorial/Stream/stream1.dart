// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Long';
  await Future.delayed(Duration(seconds: 1));
  yield 'Trung';
  await Future.delayed(Duration(seconds: 1));
  yield 'Khang';
}

// main function
void main() async {
  // you can use await for loop to get the value from stream
  print("Begin");
  await for (String name in getUserName()) {
    print(name);
  }
  print("End");
}
