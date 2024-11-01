import 'dart:isolate';

void isolateProcess(List<int> numbers) {
  print('Isolate processed ${numbers.length} items');
}

void main() async {
  final numbers = List.generate(1000000, (i) => i);

  final stopwatch = Stopwatch()..start();
  final isolate = await Isolate.spawn(isolateProcess, numbers);
  isolate.kill(priority: Isolate.immediate);
  print('Isolate completed in ${stopwatch.elapsedMilliseconds} ms');
}
