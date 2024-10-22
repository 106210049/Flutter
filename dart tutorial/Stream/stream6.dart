import 'dart:async';

//Printing numbers/events of Stream (Listening to Stream)
printStream(Stream stream) {
  print("listen");
  stream.listen((s) => print(s));
  print("End");
}

void createStreamUsingGenerators() async {
  StreamController controller = new StreamController<int>();
  Stream stream = controller.stream;

  for (int i = 0; i <= 5; i++) {
    controller.sink.add(i);
  }
  printStream(stream);
  controller.close();
}

void main() {
  //Run Example#1.
  createStreamUsingGenerators();
}
