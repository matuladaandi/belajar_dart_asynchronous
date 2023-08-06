import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test("Test sayHello() with matcher", () {
    expect(sayHello("andi"), endsWith("andi"));
    expect(sayHello("andi"), startsWith("Hello"));
    expect(sayHello("andi"), equalsIgnoringCase("Hello andi"));
    expect(sayHello("andi"), isA<String>());
  });

  test("test sum() with matcher", () {
    expect(sum(1, 1), equals(2)); // harapan 2
    expect(sum(1, 1), greaterThan(1)); // lebih dari 1
    expect(sum(1, 1), lessThan(10)); // kurang dari 10
  });
}
