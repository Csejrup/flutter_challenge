import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailView extends StatelessWidget {
  const UserDetailView({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID: ${user.id}"),
              const SizedBox(height: 8),
              Text("Name: ${user.name}"),
              const SizedBox(height: 8),
              Text("Username: ${user.username}"),
              const SizedBox(height: 8),
              Text("Email: ${user.email}"),
              const SizedBox(height: 8),
              Text("Street: ${user.address.street}"),
              const SizedBox(height: 8),
              Text("Suite: ${user.address.suite}"),
              const SizedBox(height: 8),
              Text("City: ${user.address.city}"),
              const SizedBox(height: 8),
              Text("Zipcode: ${user.address.zipcode}"),
              const SizedBox(height: 8),
              Text("Latitude: ${user.address.geo.lat}"),
              const SizedBox(height: 8),
              Text("Longitude: ${user.address.geo.lng}"),
              const SizedBox(height: 8),
              Text("Phone: ${user.phone}"),
              const SizedBox(height: 8),
              Text("Website: ${user.website}"),
              const SizedBox(height: 8),
              Text("Company: ${user.company.name}"),
              const SizedBox(height: 8),
              Text("CatchPhrase: ${user.company.catchPhrase}"),
              const SizedBox(height: 8),
              Text("BS: ${user.company.bs}"),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
