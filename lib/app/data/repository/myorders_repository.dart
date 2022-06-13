import 'package:kend_rent_car/app/data/models/myorder_model.dart';
import 'package:kend_rent_car/app/data/providers/myorder_provider.dart';
import 'package:get/get.dart';

class MyOrderRepository {
  final MyOrderProvider apiClient = Get.find<MyOrderProvider>();

  // ignore: missing_return
  Future<List<MyOrder>> getAll() async {
    // List<MyOrder> list = <MyOrder>[];

    var response = await apiClient.getOrder();

    if (response != null) {
      // response.forEach((e) {
      //   list.add(MyOrder.fromJson(e));
      // });
      var jsonString = response.body;
      return jsonString;
    }
    // print(list);
    // return list;
  }
}
