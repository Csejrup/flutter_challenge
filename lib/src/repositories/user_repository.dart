import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';

class UserRepository {
  static const _baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final List<dynamic> usersJson = json.decode(response.body);
      return usersJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
