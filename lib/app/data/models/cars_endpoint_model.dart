// import 'package:first_get/app/data/models/cars_model.dart';
// import 'dart:convert';

// List<CarsData> carsdataFromJson(String str) =>
//     List<CarsData>.from(json.decode(str).map((x) => CarsData.fromJson(x)));

// String carsToJson(List<CarsData> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CarsData extends Cars {
//   int id;
//   String nameCar;
//   String typeCar;
//   String imgCar;
//   String vendorId;
//   int dayPrice;
//   String fine;

//   CarsData(Cars cars,
//       {this.id,
//       this.nameCar,
//       this.typeCar,
//       this.imgCar,
//       this.vendorId,
//       this.dayPrice,
//       this.fine});

//   CarsData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     nameCar = json['name_car'];
//     typeCar = json['type_car'];
//     imgCar = json['img_car'];
//     vendorId = json['vendor_id'];
//     dayPrice = json['day_price'];
//     fine = json['fine'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name_car'] = this.nameCar;
//     data['type_car'] = this.typeCar;
//     data['img_car'] = this.imgCar;
//     data['vendor_id'] = this.vendorId;
//     data['day_price'] = this.dayPrice;
//     data['fine'] = this.fine;
//     return data;
//   }
// }
