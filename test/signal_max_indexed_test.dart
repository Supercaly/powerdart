
import 'package:flutter_test/flutter_test.dart';
import 'package:powerdart/src/signal_max_indexed.dart';

void main() {
  test("max indexed", () {
    List<double> input = [
      -3.9,
      7.5,
      0.0
      -1.0,
      1.3,
      1.5,
      -1.7,
      -1.8,
      1.9,
      1.9,
      -1.9,
      1.9,
    ];
    final expected = [7.5, 1.0];
    expect(maxIndexed(input), expected);
  });

  test("max indexed with one-length input", () {
    expect(maxIndexed([2.0]), [2.0, 0.0]);
  });

  test("max indexed throws an error", () {
    expect(() => maxIndexed([]), throwsAssertionError);
  });
}