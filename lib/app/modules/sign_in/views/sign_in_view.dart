// ignore_for_file: deprecated_member_use

import 'package:kend_rent_car/app/modules/sign_in/views/widgets/already_have_an_account_acheck.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_button.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_input_field.dart';
import 'package:kend_rent_car/app/modules/sign_in/views/widgets/rounded_password_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../sign_up/views/sign_up_view.dart';
import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: Get.height * 0.04),
                // Container(
                //     height: 100, width: 100, child: Image.asset('assets/logo.png')),
                // SvgPicture.asset(
                //   "assets/icons/login.svg",
                //   height: size.height * 0.35,
                // ),
                SizedBox(height: Get.height * 0.03),
                RoundedInputField(
                  hintText: "Your Email",
                  controller: controller.emailcontroller,
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
                SizedBox(height: Get.height * 0.03),
                Obx(
                  () => Visibility(
                    visible: !controller.loading.value,
                    child: RoundedButton(
                      text: "LOGIN",
                      press: () {
                        controller.login();
                      },
                    ),
                  ),
                ),
                Obx(
                  () => Visibility(
                      visible: controller.loading.value,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: Get.width * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(29),
                          child: FlatButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            onPressed: () {},
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )),
                ),
                SizedBox(height: Get.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Get.toNamed('/sign-up');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpView();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
