import 'package:kend_rent_car/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class InitialController extends GetxController {
  final box = GetStorage('kendrentcar');
  // var isAuth = false.obs;
  var auth;

  @override
  void onInit() {
    verifyAuth();
    super.onInit();
  }

  String verifyAuth() {
    auth = box.read('auth');

    if (auth != null) {
      return Routes.HOME;
      // isAuth.value = true;
    } else {
      return Routes.SIGN_IN;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
