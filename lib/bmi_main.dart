import 'dart:ffi';

import 'package:calculate_bmi/constants/constants.dart';
import 'package:calculate_bmi/pages/gesture_detector_page.dart';
import 'package:calculate_bmi/widgets/left_shape_background.dart';
import 'package:calculate_bmi/widgets/right_shape_background.dart';
import 'package:calculate_bmi/widgets/sf_radial_gauge.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class BMIMain extends StatefulWidget {
  const BMIMain({Key? key}) : super(key: key);

  @override
  State<BMIMain> createState() => _BMIMainState();
}

class _BMIMainState extends State<BMIMain> {
  var images = '';

  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';

  double widthGood = 100;
  double widthBad = 100;

  double markerPointer = 0;

  final keyBoard = TextInputType.number;

  Widget _getTextField(String stringHint, TextEditingController Controller) {
    return Container(
      width: 100,
      child: TextField(
        controller: Controller,
        //
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: orangeBackground,
        ),
        keyboardType: keyBoard,
        //
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: '$stringHint',
          hintStyle: TextStyle(
            color: orangeBackground.withOpacity(0.5),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundMain,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'تو چنده؟ BMI',
          style: TextStyle(color: black_const),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/$images.png'), fit: BoxFit.fill,opacity: 0.3),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _getTextField('وزن', weightController),
                    _getTextField('قد', heightController),
                  ],
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    final weight = double.parse(weightController.text);
                    final height = double.parse(heightController.text);

                    setState(
                      () {
                        resultBMI = weight /
                            (height *
                                height); // وزن تقسیم بر قد به توان 2 که دوبار در خودش ضرب میکنیم
                        if (resultBMI > 25) {
                          resultText = 'شما اضافه وزن دارید';
                          widthBad = 270;
                          widthGood = 50;
                          markerPointer = 85;
                          images = '3';
                        } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                          resultText = 'وزن شما نرمال است';
                          widthGood = 270;
                          widthBad = 50;
                          markerPointer = 50;
                          images = '2';
                        } else {
                          resultText = 'نیاز به افزایش وزن دارید';
                          widthBad = 40;
                          widthGood = 40;
                          markerPointer = 10;
                          images = '1';
                        }

                        //close the keyboard when the result is clicked.
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                    );
                  },
                  child: Text(
                    '! محاسبه کن',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '${resultBMI.toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '$resultText',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ),
                SizedBox(height: 20),
                LeftShape(
                  width: widthGood,
                ),
                SizedBox(height: 15),
                RightShape(width: widthBad),
                Container(
                  height: 310,
                  width: 310,
                  child: SFRadialGauge(markerPointer),
                ),
                SizedBox(height: 100),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return GestureDetectorPage();
                        },
                      ),
                    );
                  },
                  child: Text('Go to GestureDetector'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
