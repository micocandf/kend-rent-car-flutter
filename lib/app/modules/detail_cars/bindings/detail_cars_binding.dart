import 'package:get/get.dart';

import '../controllers/detail_cars_controller.dart';

class DetailCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailCarsController>(
      () => DetailCarsController(),
    );
    // Get.lazyPut<CarsDetailRepository>(
    //   () => CarsDetailRepository(),
    // );
  }
}
