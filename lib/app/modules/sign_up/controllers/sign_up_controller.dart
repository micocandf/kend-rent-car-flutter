import 'package:kend_rent_car/app/data/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/auth_model.dart';

class SignUpController extends GetxController {
  RxBool showPass = false.obs;
  RxBool loading = false.obs;

  final repository = Get.find<registerProvider>();

  Auth auth;

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Register();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void Register() async {
    await repository.Register(namecontroller.text, emailcontroller.text,
        passwordcontroller.text, phonecontroller.text, addresscontroller.text);
    //     .then((auth) {
    //   if (auth != null) {
    //     Get.offAllNamed('/sign-in');
    //   }
    // });
  }
}
