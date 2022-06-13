import 'package:kend_rent_car/app/data/providers/auth_provider.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
    Get.lazyPut<registerProvider>(
      () => registerProvider(),
    );
  }
}
