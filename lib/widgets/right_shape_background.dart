import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  const RightShape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Container(
        width: 200.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          color: Colors.red,
        ),
      ),],
    );
  }
}
