import 'package:flutter/material.dart';

Widget orderItem({
  tcode,
  car,
  image,
  amount,
  destination,
  odate,
  ldate,
  rdate,
  status,
}) {
  return AspectRatio(
    aspectRatio: 4 / 2.5,
    child: Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(20),
        color: Colors.grey[100],
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    car,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Text(
                    'Transaction Code: ' + tcode,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/cash.png'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Rp. ' + amount,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        margin: EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/placeholder.png'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          destination,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/calendar.png'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Order: ' + odate,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/key.png'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lease: ' + ldate,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Image.asset('assets/check.png'),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Return: ' + rdate,
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    // alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      'Status: ' + status,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 90,
                child: Image.network(image),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
