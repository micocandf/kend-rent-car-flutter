import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/providers/auth_provider.dart';

class AuthRepository {
  final AuthProvider authClient = AuthProvider();

  Future<Auth> login(String email, String password) async {
    Map<String, dynamic> json = await authClient.login(email, password);
    return Auth.fromJson(json);
  }
}
