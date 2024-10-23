import 'dart:async';

void main() {
  // Tạo StreamController ở chế độ broadcast
  StreamController<int> controller = StreamController<int>.broadcast();

  // Listener đầu tiên
  controller.stream.listen((data) {
    print('Listener 1: $data');
  });

  // Listener thứ hai
  controller.stream.listen((data) {
    print('Listener 2: $data');
  });
  // Phát các sự kiện vào stream
  for (int i = 0; i < 5; i++) {
    controller.sink.add(i);
  }
  // Đóng StreamController sau khi xong
  controller.close();
}
