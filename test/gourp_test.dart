import 'package:test/test.dart';

int sum(int a, int b) => a + b;
void main() {
  group('test sum() grouping', () {
    // bisa juga lebih dari 1 group dan bisa buat group dlm group
    test('test sum positif', () {
      expect(sum(1, 2), equals(3));
    });
    test('test sum negatif', () {
      expect(sum(10, -5), equals(5));
    });
  });
}
