import 'package:kend_rent_car/app/data/providers/auth_provider.dart';
import 'package:kend_rent_car/app/data/providers/myorder_provider.dart';
import 'package:kend_rent_car/app/data/repository/auth_repository.dart';
import 'package:kend_rent_car/app/data/repository/cars_api_service.dart';
import 'package:kend_rent_car/app/data/repository/my_order_repository.dart';
import 'package:kend_rent_car/app/data/repository/myorders_repository.dart';
import 'package:kend_rent_car/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CarsRepository>(
      () => CarsRepository(),
    );
    Get.lazyPut<AuthRepository>(
      () => AuthRepository(),
    );
    Get.lazyPut<logoutProvider>(
      () => logoutProvider(),
    );
    Get.lazyPut<MyOrderRepository>(
      () => MyOrderRepository(),
    );
    Get.lazyPut<MyOrdersRepository>(
      () => MyOrdersRepository(),
    );
    Get.lazyPut<MyOrderProvider>(
      () => MyOrderProvider(),
    );
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    // Get.lazyPut<HomeController>(() => HomeController());
    // Get.lazyPut<ProfileController>(() => AccountController());
  }
}
