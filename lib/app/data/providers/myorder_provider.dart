import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MyOrderProvider extends GetConnect {
  static var client = http.Client();
  final box = GetStorage('kendrentcar');

  getOrder() async {
    Auth auth = Auth.fromJson(box.read('auth'));
    final token = auth.token;

    var response = await client.get(
        Uri.parse("https://kendrentcar.com/api/transaction_order"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer ' + token,
        });

    if (response.statusCode == 200) {
      return response.body;
    } else {
      print("error");
      // Get.defaultDialog(
      //     title: "Error", content: Text("${response.body['error']}"));
    }
  }
}
