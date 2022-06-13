import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StmikPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // final box = GetStorage('kendrentcar');
    // Auth auth = Auth.fromJson(box.read('auth'));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network(
                'https://stmikpontianak.ac.id/images/images/LOGO_STMIK_REAL.png',
                width: 50,
              ),
            ),
            Text(controller.users.name),
            Text(controller.users.email),
          ],
        ),
      ),
    );
  }
}
