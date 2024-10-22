import 'dart:async';

class MyStream {
  int counter = 0;
  StreamController counterController = new StreamController<int>.broadcast();
  Stream get counterStream =>
      counterController.stream.transform(counterTranformer);

  var counterTranformer =
      StreamTransformer<int, int>.fromHandlers(handleData: (data, sink) {
    data += 5;
    sink.add(data);
  });

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

  // Lắng nghe các thay đổi từ stream và in ra giá trị counter đã được biến đổi
  myStream.counterStream.listen((value) {
    print('Transformed counter value: $value');
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
