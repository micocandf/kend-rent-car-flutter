import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help Page'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Help',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
