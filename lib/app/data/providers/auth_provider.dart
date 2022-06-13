import 'dart:convert';
import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class AuthProvider extends GetConnect {
  static var client = http.Client();

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      var response = await client.post(
        Uri.parse("https://kendrentcar.com/api/login"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        print(response.body);
        Get.defaultDialog(
            title: "Login", content: Text("Email atau Password salah."));
        return null;
      }
    } catch (error) {
      print(error);
    }
    return null;
  }
}

class registerProvider {
  static var client = http.Client();

  // ignore: missing_return
  Future<Map<String, dynamic>> Register(String name, String email,
      String password, String phone_number, address) async {
    var response = await client.post(
      Uri.parse('https://kendrentcar.com/api/register'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'password': password,
        'phone_number': phone_number,
        'address': address,
      }),
    );

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      // return carsFromJson(jsonString);
    } else {
      return null;
    }
  }
}

class logoutProvider {
  static var client = http.Client();

  Logout() async {
    final box = GetStorage('kendrentcar');
    Auth auth = Auth.fromJson(box.read('auth'));
    final token = auth.token;

    var response = await client
        .get(Uri.parse('https://kendrentcar.com/api/logout/'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token,
    });

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      // return carsFromJson(jsonString);
    } else {
      return null;
    }
  }
}
