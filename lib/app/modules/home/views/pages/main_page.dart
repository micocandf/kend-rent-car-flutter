import 'package:kend_rent_car/app/modules/home/controllers/home_controller.dart';
import 'package:kend_rent_car/app/modules/home/views/widgets/cars_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final car = controller.carList;
    // ignore: unused_local_variable
    final order = controller.orderList;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/b2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.7),
                    Colors.black.withOpacity(.2),
                  ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // FadeAnimation(
                    // 1.3,
                    Text(
                      'Pilihan mobil terbaik',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(vertical: 3),
                    //   margin: EdgeInsets.symmetric(horizontal: 40),
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(50),
                    //     color: Colors.white,
                    //   ),
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: InputBorder.none,
                    //       prefixIcon: Icon(Icons.search),
                    //       hintStyle:
                    //           TextStyle(color: Colors.grey, fontSize: 15),
                    //       hintText: "Search for best car...",
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Mobil',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 30,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Container(
                      height: 165,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 5),
                      child: GestureDetector(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: car.length,
                          itemBuilder: (content, i) => GestureDetector(
                            onTap: () {
                              Get.toNamed('/detail-cars', arguments: [
                                car[i].imgCar,
                                car[i].nameCar,
                                car[i].typeCar,
                                car[i].doors,
                                car[i].seats,
                                car[i].dayPrice,
                                car[i].fine,
                                car[i].id
                              ]);
                            },
                            child: makeItem(
                                image: car[i].imgCar, title: car[i].nameCar),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      // scrollDirection: Axis.horizontal,
                      children: [
                        AspectRatio(
                          aspectRatio: 2 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.hotel),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 2 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.flight),
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 2 / 1,
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Icon(Icons.event),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
