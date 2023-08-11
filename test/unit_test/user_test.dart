import 'package:flutter_test/flutter_test.dart';
import 'package:mc_poc/src/models/user.dart';

void main() {
  group('User Model', () {
    test('fromJson should create a User instance from JSON', () {
      //ARRANGE
      final Map<String, dynamic> json = {
        'id': 1,
        'name': 'John Doe',
        'username': 'johnd',
        'email': 'johndoe@example.com',
        'address': {
          'street': '123 Elm St',
          'suite': 'Apt 4B',
          'city': 'Sample City',
          'zipcode': '12345',
          'geo': {
            'lat': '10.0',
            'lng': '10.0',
          },
        },
        'phone': '123-456-7890',
        'website': 'johndoe.com',
        'company': {
          'name': 'Tech Co.',
          'catchPhrase': 'Innovate',
          'bs': 'Tech Solutions',
        },
      };
      //ACT
      final user = User.fromJson(json);
      //ASSERT
      expect(user.id, 1);
      expect(user.name, 'John Doe');
      expect(user.username, 'johnd');
      expect(user.email, 'johndoe@example.com');
      expect(user.address.street, '123 Elm St');
      expect(user.address.suite, 'Apt 4B');
      expect(user.address.city, 'Sample City');
      expect(user.address.zipcode, '12345');
      expect(user.address.geo.lat, '10.0');
      expect(user.address.geo.lng, '10.0');
      expect(user.phone, '123-456-7890');
      expect(user.website, 'johndoe.com');
      expect(user.company.name, 'Tech Co.');
      expect(user.company.catchPhrase, 'Innovate');
      expect(user.company.bs, 'Tech Solutions');
    });
  });
}
