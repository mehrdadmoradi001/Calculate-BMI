import 'package:calculate_bmi/constants/constants.dart';
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
        home: Scaffold(
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
              ],
            ),
          ),
        ),
      );
}
