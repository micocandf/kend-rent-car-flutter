import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class TransactionController extends GetxController {
  File image;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

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
}
