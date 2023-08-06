import 'package:test/test.dart';

void main() {
  var data = 'andi';
  setUp(() {
    data = 'andi';
    print(data);
  });

  tearDown(() { // akan di eksekusi paling akhir
    print(data);
  });
  group('test String', () {
    test('string first', () {
      data = "$data matulada";
      expect(data, equals("andi matulada"));
    });
    test('string second', () {
      data = "$data lada";
      expect(data, equals("andi lada"));
    });
    test('tesi', () {
      data = "$data matu";
      expect(data, "andi matu");
    });
  });
}
