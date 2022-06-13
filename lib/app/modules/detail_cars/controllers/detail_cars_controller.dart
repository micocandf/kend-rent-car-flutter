import 'package:get/get.dart';

class DetailCarsController extends GetxController {
  // var carData = List<CarsData>.empty().obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // fetchCars();
  }

  // void fetchCars() async {
  //   var cars = await CarsDetailRepository.getCarsData();
  //   if (cars != null) {
  //     carData.value = cars;
  //   }
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
