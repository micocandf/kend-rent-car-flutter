import 'package:kend_rent_car/app/data/models/cars_model.dart';
import 'package:http/http.dart' as http;

class CarsRepository {
  static var client = http.Client();

  static Future<List<Cars>> fetchCars() async {
    var response =
        await client.get(Uri.parse('https://kendrentcar.com/api/cars'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      return carsFromJson(jsonString);
    } else {
      return null;
    }
  }
}
