import 'package:calculate_bmi/bmi_main.dart';
import 'package:calculate_bmi/constants/constants.dart';
import 'package:calculate_bmi/pages/gesture_detector_page.dart';
import 'package:calculate_bmi/widgets/left_shape_background.dart';
import 'package:calculate_bmi/widgets/right_shape_background.dart';
import 'package:flutter/material.dart';

void main() => runApp(Application());

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'dana'),
        home: BMIMain(),
      );
}
