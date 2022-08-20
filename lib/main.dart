import 'package:calculate_bmi/widgets/left_shape_background.dart';
import 'package:calculate_bmi/widgets/right_shape_background.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              RightShape(),
              RightShape(),
              RightShape(),
              LeftShape(width: 150,),
              LeftShape(width: 200),
              LeftShape(width: 150),
            ],
          ),
        ),
      ),
    );
  }
}
