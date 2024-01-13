import 'package:log_flutter/log_flutter.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Logs();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome, isTrue);
    });
  });
}
