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
    //Kiểm tra tính đồng nhất giữa hai đối tượng District có cùng dữ liệu.
    test('equality', () {
      final district1 = District(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
        provinceId: "30",
      );

      final district2 = District(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
        provinceId: "30",
      );

      expect(district1, equals(district2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng District có dữ liệu khác nhau.
    test('inequality', () {
      final district1 = District(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
        provinceId: "30",
      );

      final district2 = District(
        id: "300",
        name: "Huyện Ninh Hải",
        level: "Huyện",
        provinceId: "30",
      );

      expect(district1, isNot(equals(district2)));
    });
  });
}
