import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:test_app/services/creat_user_model.dart';
import 'package:test_app/services/user_model.dart';

class ApiService {
  final String baseUrl = "https://reqres.in/api";
  Future<List<User>> fetchUser() async {
    final response = await http.get(Uri.parse('$baseUrl/users'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((item) => User.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load the User');
    }
  }

  Future<CreateUser> createUser(String name, String job) async {
    final response = await http.post(Uri.parse('$baseUrl/users'),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"name": name, "job": job}));

    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      return CreateUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Create User');
    }
  }
}
