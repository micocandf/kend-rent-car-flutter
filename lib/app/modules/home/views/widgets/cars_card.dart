import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget makeItem({image, title}) {
  // ignore: unused_local_variable
  final controller = Get.put(HomeController());
  // final order = controller.orderList;
  return AspectRatio(
    aspectRatio: 3 / 2,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.contain,
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
            Colors.black.withOpacity(.5),
            Colors.black.withOpacity(.0),
          ]),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ),
    ),
  );
}
