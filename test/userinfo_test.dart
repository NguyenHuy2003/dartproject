import 'package:dartproject/addressInfo.dart';
import 'package:dartproject/district.dart';
import 'package:dartproject/province.dart';
import 'package:dartproject/userinfo.dart';
import 'package:dartproject/ward.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Test UserInfo:', () {
    test('constructor', () {
      final userInfo = UserInfo(
        name: 'Nguyễn Văn Huy',
        email: 'huynnguyen26@gmail.com',
        phoneNumber: '0967709435',
        birthDate: DateTime(2003, 12, 26),
        address: AddressInfo(
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
        ),
      );

      expect(userInfo.name, equals('Nguyễn Văn Huy'));
      expect(userInfo.email, equals('huynnguyen26@gmail.com'));
      expect(userInfo.phoneNumber, equals('0967709435'));
      expect(userInfo.birthDate, equals(DateTime(2003, 12, 26)));
      expect(userInfo.address?.street, equals('Xóm 3 Thôn Trịnh Xuyên'));
    });

    test('fromMap', () {
      // Arrange
      final userData = {
        'name': 'Nguyễn Văn Huy',
        'email': 'huynnguyen26@gmail.com',
        'phoneNumber': '0967709435',
        'birthDate': '2003-12-26',
        'address': {
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
        },
      };

      final userInfo = UserInfo.fromMap(userData);

      expect(userInfo.name, equals('Nguyễn Văn Huy'));
      expect(userInfo.email, equals('huynnguyen26@gmail.com'));
      expect(userInfo.phoneNumber, equals('0967709435'));
      expect(userInfo.birthDate, equals(DateTime(2003, 12, 26)));
      expect(userInfo.address?.street, equals('Xóm 3 Thôn Trịnh Xuyên'));
    });
  });
}
