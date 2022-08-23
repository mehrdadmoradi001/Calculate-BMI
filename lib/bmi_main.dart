import 'package:calculate_bmi/constants/constants.dart';
import 'package:calculate_bmi/pages/gesture_detector_page.dart';
import 'package:calculate_bmi/widgets/left_shape_background.dart';
import 'package:calculate_bmi/widgets/right_shape_background.dart';
import 'package:flutter/material.dart';

class BMIMain extends StatefulWidget {
  const BMIMain({Key? key}) : super(key: key);

  @override
  State<BMIMain> createState() => _BMIMainState();
}

class _BMIMainState extends State<BMIMain> {
   final  weightController = TextEditingController();
   final heightController = TextEditingController();


  Widget _getTextField(String stringHint,TextEditingController Controller)  {

    return Container(
      width: 100,
      child: TextField(
        controller: Controller,    //
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: orangeBackground,
        ),
        keyboardType: TextInputType.number,
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
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getTextField('وزن',weightController),
                _getTextField('قد',heightController),
              ],
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                print(weightController.text);
                print(heightController.text);
              },
              child: Text(
                '! محاسبه کن',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              '31',
              style: TextStyle(fontSize: 64, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'شما اضافه وزن دارید',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 40),
            LeftShape(
              width: 50,
            ),
            SizedBox(height: 10),
            LeftShape(
              width: 150,
            ),
            SizedBox(height: 10),
            RightShape(width: 200),
            SizedBox(height: 10),
            RightShape(width: 100),
            SizedBox(height: 10),
            RightShape(width: 50),
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
            ),
          ],
        ),
      ),
    );
  }
}
