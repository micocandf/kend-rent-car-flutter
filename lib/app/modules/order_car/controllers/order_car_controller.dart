import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'package:kend_rent_car/app/data/models/auth_model.dart';
import 'package:kend_rent_car/app/data/providers/transaction_provider.dart';

class OrderCarController extends GetxController {
  final box = GetStorage('kendrentcar');
  final repository = Get.find<TransactionProvider>();
  File image;

  DateTime datenow = DateTime.now();
  var data = Get.arguments;
  var amount = 0.obs;
  var leaseTime = TimeOfDay.now().obs;
  var returnTime = TimeOfDay.now().obs;

  TextEditingController timeInput = TextEditingController();
  TextEditingController dateStart = TextEditingController();
  TextEditingController dateEnd = TextEditingController();
  TextEditingController whereGo = TextEditingController();

  DateTime pickedDateFirst;
  DateTime pickedDateEnd;

  var selisih;

  @override
  void onInit() {
    dateStart.text = "";
    dateEnd.text = "";
    whereGo.text = "";
    super.onInit();
  }

  chooseLeaseTime() async {
    TimeOfDay pickedTime = await showTimePicker(
      context: Get.context,
      initialTime: leaseTime.value,
      // initialEntryMode: TimePickerEntryMode.input,
      helpText: 'Select Pick Up Time',
      cancelText: 'Close',
      confirmText: 'Confirm',
    );
    if (pickedTime != null && pickedTime != leaseTime.value) {
      leaseTime.value = pickedTime;
      print(pickedTime);
    }
  }

  chooseReturnTime() async {
    TimeOfDay pickedTime = await showTimePicker(
      context: Get.context,
      initialTime: returnTime.value,
      // initialEntryMode: TimePickerEntryMode.input,
      helpText: 'Select Return Time',
      cancelText: 'Close',
      confirmText: 'Confirm',
    );
    if (pickedTime != null && pickedTime != returnTime.value) {
      returnTime.value = pickedTime;
    }
  }

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
      // maxWidth: 1800,
      // maxHeight: 1800,
    );
    image = File(pickedFile.path);
    update();
  }

  void orderCar() async {
    print(dateStart.text);
    print(dateEnd.text);
    print(data[7].toString());
    Auth auth = Auth.fromJson(box.read('auth'));
    await repository.orderCar(
      auth.user.name,
      auth.user.email,
      auth.user.phoneNumber.toString(),
      auth.user.address,
      data[7].toString(),
      datenow.timeZoneName.toString(),
      leaseTime.value.minute.toString(),
      // returnTime.string,
      dateStart.text,
      dateEnd.text,
      whereGo.text,
      amount.toInt(),
    );
  }

  hitungselisih() async {
    final datestart = DateTime(
        pickedDateFirst.year, pickedDateFirst.month, pickedDateFirst.day);
    final dateend =
        DateTime(pickedDateEnd.year, pickedDateEnd.month, pickedDateEnd.day);
    selisih = dateend.difference(datestart).inDays;
    amount.value = await data[5] * selisih;
    print(amount);
  }

  // getFromCamera() async {
  //   PickedFile pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.camera,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     File imageFile = File(pickedFile.path);
  //   }
  // }
}
