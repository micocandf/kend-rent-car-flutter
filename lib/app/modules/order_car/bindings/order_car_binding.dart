import 'package:kend_rent_car/app/data/providers/transaction_provider.dart';
import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/order_car_controller.dart';

class OrderCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderCarController>(
      () => OrderCarController(),
    );
    Get.lazyPut<TransactionProvider>(
      () => TransactionProvider(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
