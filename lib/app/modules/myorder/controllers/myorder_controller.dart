import 'package:kend_rent_car/app/data/repository/myorders_repository.dart';
import 'package:get/get.dart';

class MyorderController extends GetxController with StateMixin {
  final repository = Get.find<MyOrderRepository>();

  @override
  void onInit() async {
    super.onInit();
    loadData();
  }

  loadData() async {
    await repository.getAll().then((value) {
      change(value, status: RxStatus.success());
    }).catchError((err) {
      change(null, status: RxStatus.error('Erro ao receber os dados.'));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
