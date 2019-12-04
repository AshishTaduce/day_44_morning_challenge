import 'dart:math';
import '../bin/main.dart';
import 'package:test/test.dart';

void main() {
  test('Test Case 1', () {
    expect(rainWater([0,1,0,2,1,0,1,3,2,1,2,1]), 6);
    expect(rainWater([]), 0);
    expect(rainWater([2,1,2]), 2);

  });
}
