import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/models/myorder_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class MyOrdersRepository {
  static var client = http.Client();

  static Future<List<MyOrder>> fetchOrders() async {
    final box = GetStorage('kendrentcar');

    Auth auth = Auth.fromJson(box.read('auth'));
    var response = await client.get(
        Uri.parse("https://kendrentcar.com/api/transaction_order"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ' + auth.token,
        });

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return myOrderFromJson(jsonString);
    } else {
      return null;
    }
  }
}
