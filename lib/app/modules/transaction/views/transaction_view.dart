import 'package:kend_rent_car/app/global/constants.dart';
import 'package:kend_rent_car/app/modules/home/views/home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Check Out",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(height: 50),
              SizedBox(height: 10),
              Text(
                'Transaksi diproses',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600]),
              ),
              Text(
                'Lakukan pembayaran pada rekening bank:',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(height: 30),
              bank(),
              SizedBox(height: 42),
              infoCard(
                  title: 'Total : ', dataa: data[0] != null ? data[0] : data),
              SizedBox(height: 42),
              Text('Jika telah melakukan pembayaran,'),
              Text('lakukan konfirmasi.'),
              SizedBox(height: 15),
              cameraCard(),
              SizedBox(height: 60),
            ],
          ),
          // infoCard(title: 'Transaction code : ', dataa: data[1]),
        ],
      ),
      bottomSheet: confirmButton(),
    );
  }

  Widget bank() {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/bca.png', width: 80),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '255381',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                'A.n Sekendri Haszat',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget confirmButton() {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Get.off(HomeView());
        },
        style: TextButton.styleFrom(backgroundColor: buttonColor),
        child: Text(
          'Konfirmasi',
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }

  Widget infoCard({title, dataa}) {
    // var data = Get.arguments;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        title + dataa,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget cameraCard() {
    return GetBuilder<TransactionController>(
      init: TransactionController(),
      builder: (_) {
        return Container(
          height: 120,
          width: 120,
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: GestureDetector(
            onTap: () async {
              await controller.getImage();
            },
            child: Container(
              child: controller.image != null
                  ? Image.file(controller.image, fit: BoxFit.cover)
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/camera.png',
                          width: 35,
                        ),
                        Text(
                          'Upload bukti',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          'transaksi',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
