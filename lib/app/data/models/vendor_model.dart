// // To parse this JSON data, do
// //
// //     final cars = carsFromJson(jsonString);

// import 'dart:convert';

// List<Cars> carsFromJson(String str) => List<Cars>.from(json.decode(str).map((x) => Cars.fromJson(x)));

// String carsToJson(List<Cars> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Cars {
//     Cars({
//         this.id,
//         this.nameCar,
//         this.typeCar,
//         this.imgCar,
//         this.doors,
//         this.seats,
//         this.vendorId,
//         this.dayPrice,
//         this.fine,
//         this.vendor,
//     });

//     int id;
//     String nameCar;
//     String typeCar;
//     String imgCar;
//     String doors;
//     String seats;
//     String vendorId;
//     String dayPrice;
//     String fine;
//     Vendor vendor;

//     factory Cars.fromJson(Map<String, dynamic> json) => Cars(
//         id: json["id"],
//         nameCar: json["name_car"],
//         typeCar: json["type_car"],
//         imgCar: json["img_car"],
//         doors: json["doors"],
//         seats: json["seats"],
//         vendorId: json["vendor_id"],
//         dayPrice: json["day_price"],
//         fine: json["fine"],
//         vendor: Vendor.fromJson(json["vendor"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name_car": nameCar,
//         "type_car": typeCar,
//         "img_car": imgCar,
//         "doors": doors,
//         "seats": seats,
//         "vendor_id": vendorId,
//         "day_price": dayPrice,
//         "fine": fine,
//         "vendor": vendor.toJson(),
//     };
// }

// class Vendor {
//     Vendor({
//         this.id,
//         this.nameVendor,
//         this.createdAt,
//         this.updatedAt,
//     });

//     int id;
//     String nameVendor;
//     DateTime createdAt;
//     DateTime updatedAt;

//     factory Vendor.fromJson(Map<String, dynamic> json) => Vendor(
//         id: json["id"],
//         nameVendor: json["name_vendor"],
//         createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
//         updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name_vendor": nameVendor,
//         "created_at": createdAt == null ? null : createdAt.toIso8601String(),
//         "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
//     };
// }
