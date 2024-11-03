import 'dart:isolate';

// Hàm để chạy trong isolate mới
void isolateFunction(SendPort sendPort) {
  // Gửi một thông báo từ isolate con sang isolate chính
  sendPort.send("Hello from the new isolate!");

  // Thực hiện một công việc nặng, ví dụ như tính toán
  int result = 0;
  for (int i = 0; i < 1000000; i++) {
    result += i;
  }
  sendPort.send("Calculation result: $result");
}

void main() async {
  // Tạo một ReceivePort để nhận dữ liệu từ isolate con
  ReceivePort receivePort = ReceivePort();

  // Khởi tạo isolate mới và gửi SendPort của receivePort cho nó
  await Isolate.spawn(isolateFunction, receivePort.sendPort);

  // Lắng nghe các thông điệp từ isolate con
  receivePort.listen((message) {
    print("Received: $message");
  });
}
