import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/models/cars_model.dart';
import 'package:kend_rent_car/app/data/models/myorder_model.dart';
import 'package:kend_rent_car/app/data/providers/auth_provider.dart';
import 'package:kend_rent_car/app/data/repository/cars_api_service.dart';
import 'package:kend_rent_car/app/data/repository/my_order_repository.dart';
import 'package:kend_rent_car/app/data/repository/user_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/models/user_model.dart';

class HomeController extends GetxController with StateMixin {
  var tabIndex = 0;

  var carList = List<Cars>.empty().obs;
  var orderList = List<MyOrder>.empty().obs;
  User users;

  final box = GetStorage('kendrentcar');
  final repository = Get.find<MyOrdersRepository>();
  final logoutRepository = Get.put(logoutProvider());

  Auth auth;

  @override
  void onInit() {
    super.onInit();
    boxAuth();
    fetchCars();
    fetchUser();
    loadData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  fetchUser() async {
    var user = await UserRepository.getUser();
    if (user != null) {
      users = user;
    }
  }

  void fetchCars() async {
    var cars = await CarsRepository.fetchCars();
    if (cars != null) {
      // box.write('cars', cars);
      carList.value = cars;
    }
  }

  loadData() async {
    var orders = await MyOrdersRepository.fetchOrders();
    if (orders != null) {
      print(orders);
      orderList.value = orders;
    }
  }

  void boxClear() {
    logoutRepository.Logout();
    box.erase();
    Get.offAllNamed('/initial');
  }

  Future<void> boxAuth() async {
    auth = await Auth.fromJson(box.read('auth'));
    update();
  }

  // user(String nama) {
  //   User user =
  // }

  void changeTabIndex(int index) {
    tabIndex = index;
    loadData();
    // fetchUser();
    // fetchOrder();
    Get.toNamed('/home');
    update();
  }
}
