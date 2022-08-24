import 'package:calculate_bmi/constants/constants.dart';
import 'package:flutter/material.dart';

Widget RightShape({required double? width}) {
  //
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('شاخص منفی',style: TextStyle(color: orangeBackground),),
      SizedBox(width: 8),
      Container(
        width: width,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          color: orangeBackground,
        ),
      ),
    ],
  );
}
