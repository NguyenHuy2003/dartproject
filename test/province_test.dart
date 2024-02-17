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

    //Kiểm tra tính đồng nhất giữa hai đối tượng Province có cùng dữ liệu.
    test('equality', () {
      final province1 = Province(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
      );

      final province2 = Province(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
      );

      expect(province1, equals(province2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng Province có dữ liệu khác nhau.
    test('inequality', () {
      final province1 = Province(
        id: "299",
        name: "Huyện Ninh Giang",
        level: "Huyện",
      );

      final province2 = Province(
        id: "300",
        name: "Huyện Ninh Hải",
        level: "Huyện",
      );

      expect(province1, isNot(equals(province2)));
    });
  });
}
