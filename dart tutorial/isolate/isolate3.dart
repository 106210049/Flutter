import 'dart:isolate';

// Hàm để chạy trong isolate mới
void isolateFunction(SendPort sendPort) {
  final stopwatch = Stopwatch()..start();
  print('Isolate begin at: ${stopwatch.elapsedMicroseconds} us');
  // Gửi một thông báo từ isolate con sang isolate chính
  sendPort
      .send("Hello from the new isolate!, ${stopwatch.elapsedMicroseconds} us");

  // Thực hiện một công việc nặng, ví dụ như tính toán
  int result = 0;
  for (int i = 0; i < 100000000; i++) {
    result += i;
  }
  sendPort.send(
      "Calculation result: ${result}, ${stopwatch.elapsedMicroseconds} us");
}

void main() async {
  final stopwatch = Stopwatch()..start();

  // Tạo một ReceivePort để nhận dữ liệu từ isolate con
  ReceivePort receivePort = ReceivePort();
  print("Hello world");

  // Khởi tạo isolate mới và gửi SendPort của receivePort cho nó
  await Isolate.spawn(isolateFunction, receivePort.sendPort);

  // Lắng nghe các thông điệp từ isolate con
  receivePort.listen((message) {
    print("Received: $message");
  });

  print("Hello Long, Trung, Khang");
  print('Main thread completed in ${stopwatch.elapsedMicroseconds} us');
}
