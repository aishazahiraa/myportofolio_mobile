import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config.dart';
import '../models/experience.dart';

class ApiClient {
  String? token;

  Map<String, String> get headers => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
    if (token != null) 'Authorization': 'Token $token',
  };

  Future<bool> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$apiBaseUrl/api/v1/auth/token/'),
      headers: headers,
      body: jsonEncode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      token = jsonDecode(response.body)['token'];
      return true;
    }

    return false;
  }

  Future<void> logout() async {
    final response = await http.post(
      Uri.parse('$apiBaseUrl/api/v1/auth/logout/'),
      headers: headers,
    );

    if (response.statusCode == 204) {
      token = null;
    } else {
      throw Exception('Logout gagal');
    }
  }

  Future<List<Experience>> fetchExperiences() async {
    final response = await http.get(
      Uri.parse('$apiBaseUrl/api/v1/experiences/'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      return data.map((item) => Experience.fromJson(item)).toList();
    }

    throw Exception('Gagal mengambil data experience');
  }

  Future<bool> createExperience(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$apiBaseUrl/api/v1/experiences/'),
      headers: headers,
      body: jsonEncode(data),
    );

    return response.statusCode == 201;
  }
}
