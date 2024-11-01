import 'dart:async';

void main() {
  final numbers = List.generate(1000000, (i) => i);
  final stream = Stream.fromIterable(numbers);

  final stopwatch = Stopwatch()..start();
  stream.listen((number) {
    if (number == numbers.length - 1) {
      print('Stream completed in ${stopwatch.elapsedMilliseconds} ms');
    }
  });
}
