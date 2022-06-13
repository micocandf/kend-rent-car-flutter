import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:kend_rent_car/app/modules/home/views/widgets/profileoption_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // final box = GetStorage('kendrentcar');
    // Auth auth = Auth.fromJson(box.read('auth'));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Color.fromRGBO(55, 61, 57, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: controller.users != null
                        ? GetBuilder<HomeController>(
                            init: HomeController(),
                            builder: (_) {
                              return Column(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'assets/graphic-designer.png',
                                      width: 50,
                                    ),
                                  ),
                                  Text(
                                    controller.users.name,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(controller.users.email,
                                      style: TextStyle(color: Colors.white)),
                                ],
                              );
                            },
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                optionProfile(
                    icon: 'assets/deal.png', title: 'Gabung bersama kami'),
                Divider(
                  color: Colors.grey[400],
                  indent: 10,
                  endIndent: 10,
                ),
                optionProfile(
                    icon: 'assets/headphone.png', title: 'Hubungi Kami'),
                Divider(
                  color: Colors.grey[400],
                  indent: 10,
                  endIndent: 10,
                ),
                optionProfile(
                    icon: 'assets/document.png', title: 'Syarat & Ketentuan'),
                Divider(
                  color: Colors.grey[400],
                  indent: 10,
                  endIndent: 10,
                ),
                GestureDetector(
                    onTap: () {
                      Get.toNamed('/help');
                    },
                    child: optionProfile(
                        icon: 'assets/question.png', title: 'Bantuan')),
                Divider(
                  color: Colors.grey[400],
                  indent: 10,
                  endIndent: 10,
                ),
                GestureDetector(
                  onTap: () {
                    controller.boxClear();
                  },
                  child: Container(
                    height: 35,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/door.png',
                          width: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Log Out',
                          style:
                              TextStyle(color: Colors.red[600], fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: double.infinity,
              child: Center(
                child: Text(
                  'Kend Rent Car ©2021',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
