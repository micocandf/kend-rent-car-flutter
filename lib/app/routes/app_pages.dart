import 'package:get/get.dart';

import 'package:kend_rent_car/app/modules/detail_cars/bindings/detail_cars_binding.dart';
import 'package:kend_rent_car/app/modules/detail_cars/views/detail_cars_view.dart';
import 'package:kend_rent_car/app/modules/home/bindings/home_binding.dart';
import 'package:kend_rent_car/app/modules/home/views/home.dart';
import 'package:kend_rent_car/app/modules/initial/bindings/initial_binding.dart';
import 'package:kend_rent_car/app/modules/initial/views/initial_view.dart';
import 'package:kend_rent_car/app/modules/myorder/bindings/myorder_binding.dart';
import 'package:kend_rent_car/app/modules/myorder/views/myorder_view.dart';
import 'package:kend_rent_car/app/modules/order_car/bindings/order_car_binding.dart';
import 'package:kend_rent_car/app/modules/order_car/views/order_car_view.dart';
import 'package:kend_rent_car/app/modules/sign_in/bindings/sign_in_binding.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/sign_in_view.dart';
import 'package:kend_rent_car/app/modules/sign_up/bindings/sign_up_binding.dart';
import 'package:kend_rent_car/app/modules/sign_up/views/sign_up_view.dart';
import 'package:kend_rent_car/app/modules/transaction/bindings/transaction_binding.dart';
import 'package:kend_rent_car/app/modules/transaction/views/transaction_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      transition: Transition.cupertino,
      name: _Paths.DETAIL_CARS,
      page: () => DetailCarsView(),
      binding: DetailCarsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_CAR,
      page: () => OrderCarView(),
      binding: OrderCarBinding(),
    ),
    GetPage(
      name: _Paths.MYORDER,
      page: () => MyorderView(),
      binding: MyorderBinding(),
    ),
    GetPage(
      name: _Paths.TRANSACTION,
      page: () => TransactionView(),
      binding: TransactionBinding(),
    ),
  ];
}
