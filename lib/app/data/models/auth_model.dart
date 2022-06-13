import 'package:kend_rent_car/app/data/models/user_model.dart';

class Auth {
  User user;
  String token;

  Auth({this.user, this.token});

  Auth.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}


// class Auth {
//   User user;
//   String token;

//   Auth({required this.user, required this.token});

//   Auth.fromJson(Map<String, dynamic> json) {
//     user = (json['user'] != null ? User.fromJson(json['user']) : null)!;
//     token = json['token'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.user != null) {
//       data['user'] = this.user.toJson();
//     }
//     data['token'] = this.token;
//     return data;
//   }
// }
