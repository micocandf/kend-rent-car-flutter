import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/myorder_controller.dart';

class MyorderView extends GetView<MyorderController> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyorderController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Order',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: controller.obx(
        (list) => Container(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) => (list != null)
                ? Text('${list[i]}')
                : Text('Not yet have an transaction'),
          ),
        ),
      ),
    );
  }
}
