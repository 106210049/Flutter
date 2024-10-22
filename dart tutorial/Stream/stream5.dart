import 'dart:async';

void main() {
  // Create a broadcast StreamController that handles both integers and strings
  StreamController<dynamic> controller = StreamController<dynamic>.broadcast();

  // Listener 1: Listens only for integer events
  controller.stream.where((event) => event is int).listen((data) {
    print('Listener 1 (Integer Stream): Received value $data');
  });

  // Listener 2: Listens only for string events
  controller.stream.where((event) => event is String).listen((data) {
    print('Listener 2 (String Stream): Received message "$data"');
  });

  // Listener 3: Listens to all events but transforms the integer values
  controller.stream.listen((data) {
    if (data is int) {
      print(
          'Listener 3 (Transformed Integer Stream): Value squared is ${data * data}');
    } else {
      print('Listener 3: Received non-integer data: $data');
    }
  });

  // Send various types of events
  controller.sink.add(10); // Integer event
  controller.sink.add('Hello Long, Khang, Trung'); // String event
  controller.sink.add("Trung");
  controller.sink.add(25); // Another integer event
  controller.sink.add('Dart is great!'); // Another string event

  // Close the StreamController
  controller.close();
}
