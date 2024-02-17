import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Ward? ward;

  group('Test Ward:', () {
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
  });
}
