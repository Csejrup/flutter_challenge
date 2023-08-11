import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_poc/src/models/address.dart';
import 'package:mc_poc/src/models/company.dart';
import 'package:mc_poc/src/models/geo.dart';
import 'package:mc_poc/src/models/user.dart';
import 'package:mc_poc/src/views/user_detail_view.dart';

void main() {
  testWidgets('UserDetailView displays user details',
      (WidgetTester tester) async {
    // ARRANGE
    const user = User(
      id: 1,
      name: 'John Doe',
      username: 'johnd',
      email: 'johndoe@example.com',
      address: Address(
        street: '123 Elm St',
        suite: 'Apt 4B',
        city: 'Sample City',
        zipcode: '12345',
        geo: Geo(lat: '10.0', lng: '10.0'),
      ),
      phone: '123-456-7890',
      website: 'johndoe.com',
      company: Company(
        name: 'Tech Co.',
        catchPhrase: 'Innovate',
        bs: 'Tech Solutions',
      ),
    );

    // ACT
    await tester.pumpWidget(const MaterialApp(
      home: UserDetailView(user: user),
    ));

    // ASSERT
    expect(find.text('ID: 1'), findsOneWidget);
    expect(find.text('Name: John Doe'), findsOneWidget);
    expect(find.text('Username: johnd'), findsOneWidget);
    expect(find.text('Email: johndoe@example.com'), findsOneWidget);
    expect(find.text('Street: 123 Elm St'), findsOneWidget);
    expect(find.text('Suite: Apt 4B'), findsOneWidget);
    expect(find.text('City: Sample City'), findsOneWidget);
    expect(find.text('Zipcode: 12345'), findsOneWidget);
    expect(find.text('Latitude: 10.0'), findsOneWidget);
    expect(find.text('Longitude: 10.0'), findsOneWidget);
    expect(find.text('Phone: 123-456-7890'), findsOneWidget);
    expect(find.text('Website: johndoe.com'), findsOneWidget);
    expect(find.text('Company: Tech Co.'), findsOneWidget);
    expect(find.text('CatchPhrase: Innovate'), findsOneWidget);
    expect(find.text('BS: Tech Solutions'), findsOneWidget);
  });
}
