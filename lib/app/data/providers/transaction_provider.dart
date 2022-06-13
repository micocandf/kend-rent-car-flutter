import 'dart:convert';

import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class TransactionProvider extends GetConnect {
  static var client = http.Client();
  final box = GetStorage('kendrentcar');

  Future<Map<String, dynamic>> orderCar(
    String name,
    String email,
    String phone_number,
    String address,
    String car_id,
    String transaction_date,
    String lease_time,
    // String return_time,
    String lease_date,
    String return_date,
    String where_go,
    int amount,
  ) async {
    try {
      Auth auth = Auth.fromJson(box.read('auth'));
      var response = await client.post(
        Uri.parse("https://kendrentcar.com/api/transaction_add"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ' + auth.token,
        },
        body: jsonEncode(<String, dynamic>{
          'name': name,
          'email': email,
          'phone_number': phone_number,
          'address': address,
          'car_id': car_id,
          'transaction_date': transaction_date,
          'lease_time': lease_time,
          // 'return_time': return_time,
          'lease_date': lease_date,
          'return_date': return_date,
          'where_go': where_go,
          'amount': amount,
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

  // Future<Map<String, dynamic>> orderCar(
  //   String name,
  //   String email,
  //   String phone_number,
  //   String address,
  //   String car_id,
  //   String transaction_date,
  //   String lease_date,
  //   String return_date,
  //   String where_go,
  //   int amount,
  // ) async {
  //   Auth auth = Auth.fromJson(box.read('auth'));

  //   var request = new http.MultipartRequest(
  //       "POST", Uri.parse('https://kendrentcar.com/api/transaction_add'));

  //   request.headers['token'] = auth.token;
  //   request.headers["Content-Type"] = 'multipart/form-data';

  //   request.fields["name"] = name;
  //   request.fields["email"] = email;
  //   request.fields["phone_number"] = phone_number;
  //   request.fields["address"] = address;
  //   request.fields["car_id"] = car_id;
  //   request.fields["transaction_date"] = transaction_date;
  //   request.fields["lease_date"] = lease_date;
  //   request.fields["return_date"] = return_date;
  //   request.fields["where_go"] = where_go;
  //   request.fields["amount"] = amount.toString();

  // request.files.add(await http.MultipartFile.fromPath(
  //   'img_ktp',
  //   img_ktp,
  //   contentType: new MediaType('application', 'x-tar'),
  // )
  // );
  // request.send().then((response) {
  //   if (response.statusCode == 200) print("Uploaded!");
  // });

  // var stream =
  //     new http.ByteStream(DelegatingStream.typed(img_ktp.openRead()));
  // var length = await img_ktp.length();

  // var request = new http.MultipartRequest(
  //     "POST", Uri.parse('http://prototype-mico.xyz/api/transaction_add'));

  // var multipartFile = new http.MultipartFile("img_ktp", stream, length,
  //     filename: basename(img_ktp.path));

  // // Map<String, String> headers = {
  // //   'Content-Type': 'application/json',
  // //   'token': auth.token
  // // };
  // request.headers['token'] = auth.token;
  // request.headers["Content-Type"] = 'application/json';

  // request.fields["name"] = name;
  // request.fields["email"] = email;
  // request.fields["phone_number"] = phone_number;
  // request.fields["address"] = address;
  // request.fields["car_id"] = car_id;
  // request.fields["transaction_date"] = transaction_date;
  // request.fields["lease_date"] = lease_date;
  // request.fields["return_date"] = return_date;
  // request.fields["where_go"] = where_go;
  // request.fields["amount"] = amount.toString();
  // request.files.add(multipartFile);

  // var respond = await request.send();
  // if (respond.statusCode == 200) {
  //   print("Image Uploaded");
  //   print(respond);
  // } else {
  //   print("Upload Failed");
  //   print(respond.request);
  // }

  // final response = await http.post(
  //   Uri.parse('http://prototype-mico.xyz/api/transaction_add'),
  //   headers: <String, String>{
  //     'Content-Type': 'application/json',
  //     // 'Accept': 'application/json',
  //     'Authorization': 'Bearer ' + auth.token,
  //   },
  //   body: json.encode({
  //     "email": email,
  //     "phone_number": phone_number,
  //     "address": address,
  //     "car_id": '1',
  //     "transaction_date": transaction_date,
  //     "lease_date": lease_date,
  //     "return_date": return_date,
  //     "where_go": where_go,
  //     "amount": amount,
  //     "img_ktp":
  //         img_ktp != null ? base64Encode(img_ktp.readAsBytesSync()) : '',
  //   }),
  // );

  // print(response.body);
  // if (response.statusCode == 201) {
  //   return response.body;
  // } else {
  //   throw Exception('Failed to order Car.');
  // }
  // }
}
