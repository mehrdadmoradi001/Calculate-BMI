import 'package:calculate_bmi/constants/constants.dart';
import 'package:calculate_bmi/pages/gesture_detector_page.dart';
import 'package:flutter/material.dart';

class BMIMain extends StatelessWidget {
  const BMIMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: orangeBackground,
                ),
                keyboardType: TextInputType.number, //
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'وزن',
                  hintStyle: TextStyle(
                    color: orangeBackground.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context){return GestureDetectorPage();},
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
