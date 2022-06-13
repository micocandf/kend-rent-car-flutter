// To parse this JSON data, do

//     final cars = carsFromJson(jsonString);

import 'dart:convert';

List<Cars> carsFromJson(String str) =>
    List<Cars>.from(json.decode(str).map((x) => Cars.fromJson(x)));

String carsToJson(List<Cars> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cars {
  Cars({
    this.id,
    this.nameCar,
    this.car_plate,
    this.typeCar,
    this.imgCar,
    this.doors,
    this.seats,
    this.color,
    this.vendorId,
    this.dayPrice,
    this.fine,
  });

  int id;
  String nameCar;
  String car_plate;
  String typeCar;
  String imgCar;
  String doors;
  String seats;
  String color;
  int vendorId;
  int dayPrice;
  int fine;

  factory Cars.fromJson(Map<String, dynamic> json) => Cars(
        id: json["id"],
        nameCar: json["name_car"],
        car_plate: json["car_plate"],
        typeCar: json["type_car"],
        imgCar: json["img_car"],
        doors: json["doors"],
        seats: json["seats"],
        color: json['color'],
        vendorId: json["vendor_id"],
        dayPrice: json["day_price"],
        fine: json["fine"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name_car": nameCar,
        "car_plate": car_plate,
        "type_car": typeCar,
        "img_car": imgCar,
        "doors": doors,
        "seats": seats,
        "color": color,
        "vendor_id": vendorId,
        "day_price": dayPrice,
        "fine": fine,
      };
}
