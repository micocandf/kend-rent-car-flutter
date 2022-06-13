import 'package:kend_rent_car/app/modules/sign_in/views/widgets/text_field_container.dart';
import 'package:flutter/material.dart';
import 'package:kend_rent_car/app/global/constants.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final controller;
  bool showPass;
  Function() changeShowPassword;
  RoundedPasswordField({
    Key key,
    this.controller,
    this.onChanged,
    this.showPass = false,
    this.changeShowPassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return 'Campo requerido.';
          }
          if (value.length <= 4) {
            return 'Campo requer mínimo 5 caracteres.';
          }
          return null;
        },
        controller: controller,
        obscureText: !showPass,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            onPressed: changeShowPassword,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
// class RoundedPasswordField extends StatelessWidget {
//   final ValueChanged<String> onChanged;
//   final controller;
//   bool showPass;
//   RoundedPasswordField({
//     Key key,
//     this.onChanged,
//     this.controller,
//     this.showPass = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFieldContainer(
//       child: TextFormField(
//         validator: (value){
//           if(value.isEmpty){
//             return 'Campo requerido.';
//           }
//           if(value.length <= 4){
//             return 'Campo requer mínimo 5 caracteres.';
//           }
//           return null;
//         },
//         controller: controller,
//         obscureText: !showPass,
//         onChanged: onChanged,
//         cursorColor: kPrimaryColor,
//         decoration: InputDecoration(
//           hintText: "Password",
//           icon: Icon(
//             Icons.lock,
//             color: kPrimaryColor,
//           ),
//           suffixIcon: Icon(
//             Icons.visibility,
//             color: kPrimaryColor,                      
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }
// }
