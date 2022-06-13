import 'package:kend_rent_car/app/global/constants.dart';
import 'package:kend_rent_car/app/modules/transaction/views/transaction_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/order_car_controller.dart';

class OrderCarView extends GetView<OrderCarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Order Car', style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: ListView(
        // child: Container(
        // color: Colors.red,
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                height: 80,
                child: Center(
                  child: TextFormField(
                    controller: controller
                        .dateStart, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Tanggal Penyewaan" //label text of field
                        ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      controller.pickedDateFirst = (await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(
                              2020), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2023)));

                      if (controller.pickedDateFirst != null) {
                        String formattedDate = DateFormat('yyyy-MM-dd')
                            .format(controller.pickedDateFirst);
                        controller.dateStart.text =
                            formattedDate; //set output date to TextField value.
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: 80,
                child: Center(
                  child: TextFormField(
                    controller: controller
                        .dateEnd, //editing controller of this TextField
                    decoration: InputDecoration(
                        icon: Icon(Icons.calendar_today), //icon of text field
                        labelText: "Tanggal Pengembalian" //label text of field
                        ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      controller.pickedDateEnd = (await showDatePicker(
                          context: context,
                          initialDate: controller.pickedDateEnd != null
                              ? controller.pickedDateEnd
                              : DateTime.now(),
                          firstDate: DateTime(
                              2020), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2023)));

                      if (controller.pickedDateEnd != null) {
                        String formattedDate = DateFormat('yyyy-MM-dd')
                            .format(controller.pickedDateEnd);
                        controller.dateEnd.text =
                            formattedDate; //set output date to TextField value.
                        controller.hitungselisih();
                      } else {
                        print("Date is not selected");
                      }
                    },
                  ),
                ),
              ),
              leaseTime(),
              // locationForm(),

              // GetBuilder<OrderCarController>(
              //   init: OrderCarController(),
              //   builder: (_) {
              //     return GestureDetector(
              //       child: Container(
              //         height: 160,
              //         width: 160,
              //         // padding: EdgeInsets.only(top: 55),
              //         child: controller.image != null
              //             ? Image.file(controller.image, fit: BoxFit.cover)
              //             : Padding(
              //                 padding: const EdgeInsets.only(top: 55.0),
              //                 child: Column(
              //                   children: [
              //                     Align(
              //                       alignment: Alignment.center,
              //                       child: Image.asset(
              //                         'assets/camera.png',
              //                         width: 35,
              //                       ),
              //                     ),
              //                     Center(
              //                         child: Text(
              //                       'Take your KTP picture',
              //                       style: TextStyle(fontSize: 10),
              //                     )),
              //                   ],
              //                 ),
              //               ),
              //         decoration: BoxDecoration(
              //           border: Border.all(color: Colors.grey[400]),
              //         ),
              //       ),
              //       onTap: () async {
              //         await controller.getImage();
              //       },
              //     );
              //   },
              // ),
              SizedBox(height: 15),
              amountCard(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              controller.orderCar();
              Get.off(TransactionView(),
                  arguments: controller.amount.toString());
            },
            child: Text('ORDER'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget leaseTime() {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Obx(
        () => GestureDetector(
          child: Row(
            children: [
              Text('Waktu pengambilan mobil: '),
              SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: Text(
                  "${controller.leaseTime.value.hour}:${controller.leaseTime.value.minute}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          onTap: () {
            controller.chooseLeaseTime();
          },
        ),
      ),
    );
  }

  Widget returnTime() {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Obx(
        () => GestureDetector(
          child: Row(
            children: [
              Text('Choose Return Time: '),
              SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: borderColor),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
                child: Text(
                  "${controller.returnTime.value.hour}:${controller.returnTime.value.minute}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
          onTap: () {
            controller.chooseReturnTime();
          },
        ),
      ),
    );
  }

  Widget locationForm() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        controller: controller.whereGo,
        // initialValue: 'Input destination',
        maxLength: 20,
        decoration: InputDecoration(
          icon: Icon(Icons.location_pin),
          labelText: 'Tujuan',
          // labelStyle: TextStyle(
          //   color: Color(0xFF6200EE),
          // ),
          // enabledBorder: UnderlineInputBorder(
          //   borderSide: BorderSide(color: Color(0xFF6200EE)),
          // ),
        ),
      ),
    );
  }

  Widget amountCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Total', style: TextStyle(fontSize: 12)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Obx(() => Text(
                  controller.amount.toString(),
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ],
      ),
    );
  }
}
