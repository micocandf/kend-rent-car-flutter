import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/myorder_controller.dart';

class MyorderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyorderController>(
      () => MyorderController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
