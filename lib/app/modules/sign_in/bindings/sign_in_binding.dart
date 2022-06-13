import 'package:kend_rent_car/app/data/providers/auth_provider.dart';
import 'package:kend_rent_car/app/data/providers/myorder_provider.dart';
import 'package:kend_rent_car/app/data/repository/auth_repository.dart';
import 'package:kend_rent_car/app/data/repository/myorders_repository.dart';
import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepository(),
    );
    Get.lazyPut<AuthProvider>(
      () => AuthProvider(),
    );
    Get.lazyPut<MyOrderRepository>(
      () => MyOrderRepository(),
    );
    Get.lazyPut<MyOrderProvider>(
      () => MyOrderProvider(),
    );
  }
}
