// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.id,
    this.role,
    this.name,
    this.phoneNumber,
    this.address,
    this.email,
    this.emailVerifiedAt,
    this.contactPerson,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String role;
  String name;
  String phoneNumber;
  String address;
  String email;
  dynamic emailVerifiedAt;
  dynamic contactPerson;
  DateTime createdAt;
  DateTime updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        role: json["role"],
        name: json["name"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        contactPerson: json["contact_person"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "role": role,
        "name": name,
        "phone_number": phoneNumber,
        "address": address,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "contact_person": contactPerson,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}


// class User {
//   int id;
//   String role;
//   String name;
//   String phoneNumber;
//   String address;
//   String email;
//   Null emailVerifiedAt;
//   Null contactPerson;
//   String createdAt;
//   String updatedAt;

//   User(
//       {this.id,
//       this.role,
//       this.name,
//       this.phoneNumber,
//       this.address,
//       this.email,
//       this.emailVerifiedAt,
//       this.contactPerson,
//       this.createdAt,
//       this.updatedAt});

//   User.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     role = json['role'];
//     name = json['name'];
//     phoneNumber = json['phone_number'];
//     address = json['address'];
//     email = json['email'];
//     emailVerifiedAt = json['email_verified_at'];
//     contactPerson = json['contact_person'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['role'] = this.role;
//     data['name'] = this.name;
//     data['phone_number'] = this.phoneNumber;
//     data['address'] = this.address;
//     data['email'] = this.email;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['contact_person'] = this.contactPerson;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }
