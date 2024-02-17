import 'package:dartproject/district.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  District? district;

  group('Test District:', () {
    test('constructor', () {
      district = District(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
        provinceId: "30",
      );

      expect(district?.id, equals("299"));
      expect(district?.name, equals("Huyện Ninh Giang"));
      expect(district?.level, equals("Huyện"));
      expect(district?.provinceId, equals("30"));
    });
  });
}
