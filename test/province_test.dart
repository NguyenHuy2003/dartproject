import 'package:dartproject/province.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Province? province;

  group('Test Province:', () {
    test('constructor', () {
      province = Province(
        id: "30",
        name: "Tỉnh Hải Dương",
        level: "Tỉnh",
      );

      expect(province?.id, equals("30"));
      expect(province?.name, equals("Tỉnh Hải Dương"));
      expect(province?.level, equals("Tỉnh"));
    });
  });
}
