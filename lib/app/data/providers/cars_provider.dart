import 'dart:convert';

import 'package:get/get.dart';

import '../models/cars_model.dart';

class CarsProvider extends GetConnect {
  // @override
  // void onInit() {
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Cars.fromJson(map);
  //     if (map is List) return map.map((item) => Cars.fromJson(item)).toList();
  //   };
  //   httpClient.baseUrl = 'YOUR-API-URL';
  // }

  Future<Cars> getCars() async {
    final response = await get('https://kendrentcar.com/api/cars');
    Iterable it = jsonDecode(response.body);
    // ignore: unused_local_variable
    List<Cars> cars = it.map((e) => Cars.fromJson(e)).toList();
    return jsonDecode(response.body);
  }

  Future<Response<Cars>> postCars(Cars cars) async => await post('cars', cars);
  Future<Response> deleteCars(int id) async => await delete('cars/$id');
}
