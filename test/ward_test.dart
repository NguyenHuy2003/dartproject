import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Ward? ward;

  group('Test Ward:', () {
    //Kiểm tra xem có thể tạo đối tượng Ward từ dữ liệu đầu vào không
    //Và kiểm tra tính đúng đắn của các trường dữ liệu.
    test('constructor', () {
      ward = Ward(
        id: "11164",
        name: "Xã Nghĩa An",
        level: "Xã",
        districtId: "299",
        provinceId: "30",
      );

      expect(ward?.id, equals("11164"));
      expect(ward?.name, equals("Xã Nghĩa An"));
      expect(ward?.level, equals("Xã"));
      expect(ward?.districtId, equals("299"));
      expect(ward?.provinceId, equals("30"));
    });

    //Kiểm tra tính đồng nhất giữa hai đối tượng Ward có cùng dữ liệu.
    test('equality', () {
      final ward1 = Ward(
        id: "11164",
        name: "Xã Nghĩa An",
        level: "Xã",
        districtId: "299",
        provinceId: "30",
      );

      final ward2 = Ward(
        id: "11164",
        name: "Xã Nghĩa An",
        level: "Xã",
        districtId: "299",
        provinceId: "30",
      );

      expect(ward1, equals(ward2));
    });

    //Kiểm tra tính khác biệt giữa hai đối tượng Ward có dữ liệu khác nhau.
    test('inequality', () {
      final ward1 = Ward(
        id: "11164",
        name: "Xã Nghĩa An",
        level: "Xã",
        districtId: "299",
        provinceId: "30",
      );

      final ward2 = Ward(
        id: "11165",
        name: "Xã Nghĩa Lộc",
        level: "Xã",
        districtId: "300",
        provinceId: "31",
      );

      expect(ward1, isNot(equals(ward2)));
    });
  });
}
