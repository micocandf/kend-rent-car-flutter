import 'package:flutter/material.dart';

Widget optionProfile({icon, title}) {
  return Container(
    height: 35,
    width: double.infinity,
    padding: EdgeInsets.only(left: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            icon,
            width: 23,
          ),
        ),
        SizedBox(width: 10),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        new Spacer(),
        Container(
          margin: EdgeInsets.only(right: 5),
          child: Image.asset(
            'assets/next.png',
            width: 12,
          ),
        ),
      ],
    ),
  );
}
