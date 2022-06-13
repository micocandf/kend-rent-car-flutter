import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class UserRepository extends GetConnect {
  static var client = http.Client();

  static Future<User> getUser() async {
    final box = GetStorage('kendrentcar');
    Auth auth;
    auth = await Auth.fromJson(box.read('auth'));
    String token = auth.token;

    final response =
        await http.get(Uri.parse('https://kendrentcar.com/api/user'), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer ' + token,
    });

    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      return userFromJson(jsonString);
    } else {
      return null;
    }
  }
}
