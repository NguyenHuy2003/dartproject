import 'package:dartproject/addressInfo.dart';
import 'package:dartproject/district.dart';
import 'package:dartproject/province.dart';
import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test AddressInfo:', () {
    test('constructor', () {
      // Arrange
      final address = AddressInfo(
        province: Province(id: '30', name: 'Tỉnh Hải Dương', level: 'Tỉnh'),
        district: District(
            id: '299',
            name: 'Huyện Ninh Giang',
            level: 'Huyện',
            provinceId: '30'),
        ward: Ward(
            id: '11164',
            name: "Xã Nghĩa An",
            level: "Xã",
            districtId: "299",
            provinceId: "30"),
        street: 'Xóm 3 Thôn Trịnh Xuyên',
      );

      // Assert
      expect(address.province?.id, equals('30'));
      expect(address.district?.id, equals('299'));
      expect(address.ward?.id, equals('11164'));
      expect(address.street, equals('Xóm 3 Thôn Trịnh Xuyên'));
    });

    //Test case fromMap kiểm tra tính đúng đắn của phương thức fromMap để tạo đối tượng từ một dữ liệu kiểu Map.
    test('fromMap', () {
      // Arrange
      final addressData = {
        'province': {'id': '30', 'name': 'Tỉnh Hải Dương', 'level': 'Tỉnh'},
        'district': {
          'id': '299',
          'name': 'Huyện Ninh Giang',
          'level': 'Huyện',
          'provinceId': '30'
        },
        'ward': {
          'id': '11164',
          'name': "Xã Nghĩa An",
          'level': "Xã",
          'districtId': "299",
          'provinceId': "30"
        },
        'street': 'Xóm 3 Thôn Trịnh Xuyên',
      };

      // Act
      final address = AddressInfo.fromMap(addressData);

      // Assert
      expect(address.province?.id, equals('30'));
      expect(address.district?.id, equals('299'));
      expect(address.ward?.id, equals('11164'));
      expect(address.street, equals('Xóm 3 Thôn Trịnh Xuyên'));
    });
  });
}
