import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_button.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_input_field.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_password_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            SizedBox(height: 50),
            Center(
              child: Text('Register',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30),
            RoundedInputField(
              hintText: "Full Name",
              controller: controller.namecontroller,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Email",
              controller: controller.emailcontroller,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Phone Number",
              controller: controller.phonecontroller,
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Address",
              controller: controller.addresscontroller,
              onChanged: (value) {},
            ),
            Obx(
              () => RoundedPasswordField(
                showPass: controller.showPass.value,
                changeShowPassword: () {
                  controller.showPass.value = !controller.showPass.value;
                },
                controller: controller.passwordcontroller,
                onChanged: (value) {},
              ),
            ),
            Obx(
              () => Visibility(
                visible: !controller.loading.value,
                child: RoundedButton(
                  text: "REGISTER",
                  press: () {
                    controller.Register();
                    // Get.back();
                    Get.offAllNamed('/sign-in');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
