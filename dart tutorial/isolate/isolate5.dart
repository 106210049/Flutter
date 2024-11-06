import 'dart:async';

void main() {
  final stopwatch = Stopwatch()..start();

  print("Hello world");

  // Thực hiện công việc nặng trực tiếp trên main thread
  final result = heavyComputation();
  print("Calculation result: ${result}, ${stopwatch.elapsedMicroseconds} µs");

  print("Hello Long, Trung, Khang");
  print('Main thread completed in ${stopwatch.elapsedMicroseconds} µs');
}

int heavyComputation() {
  final stopwatch = Stopwatch()..start();
  print("Starting heavy computation...");

  int result = 0;
  for (int i = 0; i < 100000000; i++) {
    result += i;
  }

  print("Heavy computation completed in ${stopwatch.elapsedMicroseconds} µs");
  return result;
}
