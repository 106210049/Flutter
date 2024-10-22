import 'dart:async';

class MyStream {
  int counter = 0;
  StreamController counterController = new StreamController<int>();
  Stream get counterStream => counterController.stream;

  void increment() {
    counter += 1;
    counterController.sink.add(counter);
  }

  void dispose() {
    counterController.close();
  }
}

void main() {
  // Tạo đối tượng MyStream
  MyStream myStream = MyStream();

  // Lắng nghe các thay đổi từ stream và in ra giá trị counter
  myStream.counterStream.listen((value) {
    print('Counter value: $value');
  });

  // Tăng giá trị counter sau mỗi giây
  Timer.periodic(Duration(seconds: 1), (timer) {
    myStream.increment();

    // Dừng sau khi tăng 10 lần
    if (myStream.counter == 10) {
      timer.cancel();
      myStream.dispose();
    }
  });
}
