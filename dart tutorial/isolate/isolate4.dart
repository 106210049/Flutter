import 'dart:isolate';

// Hàm để chạy trong isolate mới
void isolateFunction(SendPort mainSendPort) {
  // Tạo một ReceivePort để nhận tin nhắn từ isolate chính
  ReceivePort isolateReceivePort = ReceivePort();

  // Gửi SendPort của isolate con về main isolate
  mainSendPort.send(isolateReceivePort.sendPort);

  // Lắng nghe các tin nhắn từ isolate chính
  isolateReceivePort.listen((message) {
    print("Worker Isolate received: $message");

    // Gửi phản hồi về main isolate
    mainSendPort.send("Reply from the new isolate!");
  });

  // Gửi một thông báo khởi tạo từ isolate con sang main isolate
  mainSendPort.send("Hello from the new isolate!");

  // Thực hiện một công việc nặng, ví dụ như tính toán
  int result = 0;
  for (int i = 0; i < 1000000; i++) {
    result += i;
  }
  mainSendPort.send("Calculation result: $result");
}

void main() async {
  // Tạo một ReceivePort để nhận dữ liệu từ isolate con
  ReceivePort mainReceivePort = ReceivePort();

  // Khởi tạo isolate mới và gửi SendPort của mainReceivePort cho nó
  await Isolate.spawn(isolateFunction, mainReceivePort.sendPort);

  // Lắng nghe các thông điệp từ isolate con
  SendPort? isolateSendPort;
  mainReceivePort.listen((message) {
    if (message is SendPort) {
      // Nhận SendPort từ isolate con và lưu trữ nó để gửi tin nhắn hai chiều
      isolateSendPort = message;

      // Gửi một tin nhắn đến isolate con
      isolateSendPort?.send("Hello worker isolate. I'm from main isolate!!!");
      isolateSendPort?.send("Hello Long,Trung,Khang !!!");
    } else {
      print("Main isolate received: $message");
    }
  });
}
