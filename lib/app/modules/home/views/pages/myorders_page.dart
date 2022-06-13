import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:kend_rent_car/app/modules/home/views/widgets/myorders_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final order = controller.orderList;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Obx(
        () => Container(
          padding: EdgeInsets.all(5),
          child: ListView.builder(
            itemCount: order.length,
            itemBuilder: (context, i) {
              // MyOrder order = order[i];
              return SingleChildScrollView(
                child: GestureDetector(
                  child: order != null
                      ? orderItem(
                          tcode: order[i].codeTransaction,
                          car: order[i].car.nameCar,
                          amount: order[i].amount,
                          destination: order[i].whereGo,
                          odate: order[i].transactionDate.toString(),
                          ldate: order[i].leaseDate.toString(),
                          rdate: order[i].returnDate.toString(),
                          status: order[i].statusTransaction,
                          image: order[i].car.imgCar)
                      : Text('Not yet have an Order.'),
                  onTap: () {
                    Get.toNamed('/transaction',
                        arguments: [order[i].amount, order[i].codeTransaction]);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
