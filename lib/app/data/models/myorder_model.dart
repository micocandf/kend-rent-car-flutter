// To parse this JSON data, do
//
//     final myOrder = myOrderFromJson(jsonString);

import 'dart:convert';

import 'package:kend_rent_car/app/data/models/cars_model.dart';

List<MyOrder> myOrderFromJson(String str) =>
    List<MyOrder>.from(json.decode(str).map((x) => MyOrder.fromJson(x)));

String myOrderToJson(List<MyOrder> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyOrder {
  MyOrder({
    this.id,
    this.codeTransaction,
    this.userId,
    this.carId,
    this.transactionDate,
    this.leaseTime,
    this.returnTime,
    this.leaseDate,
    this.returnDate,
    this.amount,
    this.typeTransaction,
    this.imgTransaction,
    this.imgKtp,
    this.statusTransaction,
    this.statusCar,
    this.whereGo,
    this.createdAt,
    this.updatedAt,
    this.car,
  });

  int id;
  String codeTransaction;
  int userId;
  int carId;
  DateTime transactionDate;
  String leaseTime;
  String returnTime;
  DateTime leaseDate;
  DateTime returnDate;
  String amount;
  String typeTransaction;
  String imgTransaction;
  String imgKtp;
  String statusTransaction;
  String statusCar;
  String whereGo;
  DateTime createdAt;
  DateTime updatedAt;
  Cars car;

  factory MyOrder.fromJson(Map<String, dynamic> json) => MyOrder(
        id: json["id"],
        codeTransaction: json["code_transaction"],
        userId: json["user_id"],
        carId: json["car_id"],
        transactionDate: DateTime.parse(json["transaction_date"]),
        leaseTime: json["lease_time"],
        returnTime: json["return_time"],
        leaseDate: DateTime.parse(json["lease_date"]),
        returnDate: DateTime.parse(json["return_date"]),
        amount: json["amount"],
        typeTransaction: json["type_transaction"],
        imgTransaction: json["img_transaction"],
        imgKtp: json["img_ktp"] == null ? null : json["img_ktp"],
        statusTransaction: json["status_transaction"],
        statusCar: json["status_car"],
        whereGo: json["where_go"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        car: Cars.fromJson(json["car"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code_transaction": codeTransaction,
        "user_id": userId,
        "car_id": carId,
        "transaction_date":
            "${transactionDate.year.toString().padLeft(4, '0')}-${transactionDate.month.toString().padLeft(2, '0')}-${transactionDate.day.toString().padLeft(2, '0')}",
        "lease_time": leaseTime,
        "return_time": returnTime,
        "lease_date":
            "${leaseDate.year.toString().padLeft(4, '0')}-${leaseDate.month.toString().padLeft(2, '0')}-${leaseDate.day.toString().padLeft(2, '0')}",
        "return_date":
            "${returnDate.year.toString().padLeft(4, '0')}-${returnDate.month.toString().padLeft(2, '0')}-${returnDate.day.toString().padLeft(2, '0')}",
        "amount": amount,
        "type_transaction": typeTransaction,
        "img_transaction": imgTransaction,
        "img_ktp": imgKtp == null ? null : imgKtp,
        "status_transaction": statusTransaction,
        "status_car": statusCar,
        "where_go": whereGo,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "car": car.toJson(),
      };
}

// List<MyOrder> myOrderFromJson(String str) =>
//     List<MyOrder>.from(json.decode(str).map((x) => MyOrder.fromJson(x)));

// String myOrderToJson(List<MyOrder> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class MyOrder {
//   MyOrder({
//     this.id,
//     this.codeTransaction,
//     this.userId,
//     this.carId,
//     this.transactionDate,
//     this.leaseTime,
//     this.returnTime,
//     this.leaseDate,
//     this.returnDate,
//     this.amount,
//     this.typeTransaction,
//     this.imgTransaction,
//     this.imgKtp,
//     this.statusTransaction,
//     this.statusCar,
//     this.whereGo,
//     this.createdAt,
//     this.updatedAt,
//     this.car,
//   });

//   String id;
//   String codeTransaction;
//   String userId;
//   String carId;
//   DateTime transactionDate;
//   String leaseTime;
//   String returnTime;
//   DateTime leaseDate;
//   DateTime returnDate;
//   String amount;
//   String typeTransaction;
//   dynamic imgTransaction;
//   String imgKtp;
//   String statusTransaction;
//   dynamic statusCar;
//   String whereGo;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Cars car;

//   factory MyOrder.fromJson(Map<String, dynamic> json) => MyOrder(
//         id: json["id"],
//         codeTransaction: json["code_transaction"],
//         userId: json["user_id"],
//         carId: json["car_id"],
//         transactionDate: DateTime.parse(json["transaction_date"]),
//         leaseTime: json["lease_time"],
//         returnTime: json["return_time"],
//         leaseDate: DateTime.parse(json["lease_date"]),
//         returnDate: DateTime.parse(json["return_date"]),
//         amount: json["amount"],
//         typeTransaction: json["type_transaction"],
//         imgTransaction: json["img_transaction"],
//         imgKtp: json["img_ktp"],
//         statusTransaction: json["status_transaction"],
//         statusCar: json["status_car"],
//         whereGo: json["where_go"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         car: Cars.fromJson(json["car"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "code_transaction": codeTransaction,
//         "user_id": userId,
//         "car_id": carId,
//         "transaction_date":
//             "${transactionDate.year.toString().padLeft(4, '0')}-${transactionDate.month.toString().padLeft(2, '0')}-${transactionDate.day.toString().padLeft(2, '0')}",
//         "lease_time": leaseTime,
//         "return_time": returnTime,
//         "lease_date":
//             "${leaseDate.year.toString().padLeft(4, '0')}-${leaseDate.month.toString().padLeft(2, '0')}-${leaseDate.day.toString().padLeft(2, '0')}",
//         "return_date":
//             "${returnDate.year.toString().padLeft(4, '0')}-${returnDate.month.toString().padLeft(2, '0')}-${returnDate.day.toString().padLeft(2, '0')}",
//         "amount": amount,
//         "type_transaction": typeTransaction,
//         "img_transaction": imgTransaction,
//         "img_ktp": imgKtp,
//         "status_transaction": statusTransaction,
//         "status_car": statusCar,
//         "where_go": whereGo,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "car": car.toJson(),
//       };
// }

//---------------------

// // To parse this JSON data, do
// //
// //     final myOrder = myOrderFromJson(jsonString);

// import 'dart:convert';

// import 'package:first_get/app/data/models/cars_model.dart';

// List<MyOrder> myOrderFromJson(String str) =>
//     List<MyOrder>.from(json.decode(str).map((x) => MyOrder.fromJson(x)));

// String myOrderToJson(List<MyOrder> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class MyOrder {
//   MyOrder({
//     this.id,
//     this.codeTransaction,
//     this.userId,
//     this.carId,
//     this.transactionDate,
//     this.leaseDate,
//     this.returnDate,
//     this.leaseTime,
//     this.returnTime,
//     this.amount,
//     this.typeTransaction,
//     this.imgTransaction,
//     this.imgKtp,
//     this.statusTransaction,
//     this.statusCar,
//     this.whereGo,
//     this.createdAt,
//     this.updatedAt,
//     this.car,
//   });

//   int id;
//   String codeTransaction;
//   String userId;
//   String carId;
//   DateTime transactionDate;
//   DateTime leaseDate;
//   DateTime returnDate;
//   String leaseTime;
//   String returnTime;
//   String amount;
//   String typeTransaction;
//   String imgTransaction;
//   dynamic imgKtp;
//   String statusTransaction;
//   dynamic statusCar;
//   String whereGo;
//   DateTime createdAt;
//   DateTime updatedAt;
//   Cars car;

//   factory MyOrder.fromJson(Map<String, dynamic> json) => MyOrder(
//         id: json["id"],
//         codeTransaction: json["code_transaction"],
//         userId: json["user_id"],
//         carId: json["car_id"],
//         transactionDate: DateTime.parse(json["transaction_date"]),
//         leaseDate: DateTime.parse(json["lease_date"]),
//         returnDate: DateTime.parse(json["return_date"]),
//         leaseTime: json["lease_time"],
//         returnTime: json["return_time"],
//         amount: json["amount"],
//         typeTransaction: json["type_transaction"],
//         imgTransaction: json["img_transaction"],
//         imgKtp: json["img_ktp"],
//         statusTransaction: json["status_transaction"],
//         statusCar: json["status_car"],
//         whereGo: json["where_go"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         car: Cars.fromJson(json["car"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "code_transaction": codeTransaction,
//         "user_id": userId,
//         "car_id": carId,
//         "transaction_date":
//             "${transactionDate.year.toString().padLeft(4, '0')}-${transactionDate.month.toString().padLeft(2, '0')}-${transactionDate.day.toString().padLeft(2, '0')}",
//         "lease_date":
//             "${leaseDate.year.toString().padLeft(4, '0')}-${leaseDate.month.toString().padLeft(2, '0')}-${leaseDate.day.toString().padLeft(2, '0')}",
//         "return_date":
//             "${returnDate.year.toString().padLeft(4, '0')}-${returnDate.month.toString().padLeft(2, '0')}-${returnDate.day.toString().padLeft(2, '0')}",
//         "lease_time": leaseTime,
//         "return_time": returnTime,
//         "amount": amount,
//         "type_transaction": typeTransaction,
//         "img_transaction": imgTransaction,
//         "img_ktp": imgKtp,
//         "status_transaction": statusTransaction,
//         "status_car": statusCar,
//         "where_go": whereGo,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "car": car.toJson(),
//       };
// }
