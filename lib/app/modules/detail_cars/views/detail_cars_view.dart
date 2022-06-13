import 'package:kend_rent_car/app/modules/detail_cars/views/Animations/FadeAnimation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/detail_cars_controller.dart';

class DetailCarsView extends GetView<DetailCarsController> {
  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;

    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: mediaQuery.size.height / 3,
            child: FadeAnimation(
                1.2,
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          colors: [
                        Color.fromRGBO(36, 36, 36, 1),
                        Color.fromRGBO(252, 250, 245, 1)
                      ])),
                  child: Transform.translate(
                    offset: Offset(10, -9),
                    child: FadeAnimation(
                        1.3,
                        Image.network(
                          '${data[0]}',
                        )),
                  ),
                )),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: MediaQuery.of(context).size.height / 1.4,
            child: FadeAnimation(
              1.2,
              Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                        1.3,
                        Text(
                          data[1],
                          style: TextStyle(
                              color: Color.fromRGBO(97, 90, 90, .54),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FadeAnimation(
                            1.2,
                            Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/stick.png')),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(data[2] + ' Transmisi'),
                          ),
                          FadeAnimation(
                            1.3,
                            Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/car-door.png')),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(data[3] + ' Pintu'),
                          ),
                          FadeAnimation(
                            1.3,
                            Container(
                              width: 30,
                              height: 30,
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/car-seat.png'),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Text(data[4] + ' Kursi'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FadeAnimation(
                        1.3,
                        Text(
                          "Syarat & Ketentuan Rental",
                          style: TextStyle(
                            color: Color.fromRGBO(97, 90, 90, 1),
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      FadeAnimation(
                        1.4,
                        Text(
                          "Syarat sewa, penyewa wajib memberikan jaminan KTP untuk penyewaan yang ditentukan dan akan ada denda keterlambatan jika waktu pengembalian tidak sesuai dengan waktu penjemputan mobil.",
                          style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 0.54),
                            height: 1.4,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                        1.2,
                        Text(
                          'Opsi lainnya',
                          style: TextStyle(
                              color: Color.fromRGBO(97, 90, 90, .54),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            FadeAnimation(
                                1.3,
                                AspectRatio(
                                  aspectRatio: 2.6 / 1,
                                  child: Container(
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 56,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1)),
                                          child: Image.asset(
                                              'assets/steering-wheel.png'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Lepas Kunci',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      97, 90, 90, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              'Menyetir sendiri',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      97, 90, 90, .7),
                                                  fontSize: 13),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                            FadeAnimation(
                                1.4,
                                AspectRatio(
                                  aspectRatio: 3 / 1,
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20),
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.grey[300]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 56,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.white),
                                          child:
                                              Image.asset('assets/student.png'),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Plus Driver',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      97, 90, 90, 1),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 2,
                                            ),
                                            Text(
                                              'Layanan driver',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      97, 90, 90, .7),
                                                  fontSize: 13),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/order-car', arguments: [
                            data[0],
                            data[1],
                            data[2],
                            data[3],
                            data[4],
                            data[5],
                            data[6],
                            data[7]
                          ]);
                        },
                        child: FadeAnimation(
                            1.5,
                            Container(
                              height: 60,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300],
                                        blurRadius: 10,
                                        offset: Offset(0, 10))
                                  ],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(115, 115, 115, 1),
                                    Color.fromRGBO(66, 66, 66, 1)
                                  ])),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: <Widget>[
                                      Text(
                                        '\Rp. ' + data[5].toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '/Hari ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Sewa',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
