import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/models/myorder_model.dart';
import 'package:kend_rent_car/app/data/repository/auth_repository.dart';
import 'package:kend_rent_car/app/data/repository/myorders_repository.dart';
import 'package:kend_rent_car/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class SignInController extends GetxController with StateMixin {
  final repository = Get.find<AuthRepository>();
  final repositoryy = Get.find<MyOrderRepository>();
  final formKey = GlobalKey<FormState>();
  final box = GetStorage('kendrentcar');

  var orderList = List<MyOrder>.empty().obs;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Auth auth;

  RxBool showPass = false.obs;
  RxBool loading = false.obs;

  void login() async {
    try {
      if (formKey.currentState.validate()) {
        loading.value = false;
        await repository
            .login(emailcontroller.text, passwordcontroller.text)
            .then(
          (auth) {
            if (auth != null) {
              print(auth.user.name);
              box.write('auth', auth);
              update();
              // loadDataa();
              Get.offAllNamed('/home');
            } else {
              return Routes.HOME;
            }
          },
        );
      }
    } on Exception catch (e) {
      print(e);
    }
  }
}
