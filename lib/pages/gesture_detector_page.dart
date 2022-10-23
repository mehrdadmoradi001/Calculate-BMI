import 'package:calculate_bmi/constants/constants.dart';
import 'package:calculate_bmi/widgets/sf_radial_gauge.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:hexcolor/hexcolor.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  int counter = 0;
  double _elevation = 4;
  double markerPointer = 4;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Text(
                  '$counter',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = counter + 1;
                    });
                  },
                  child: Text('click'),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      counter = counter - 1; //
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.white.withOpacity(0.7), //
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SFRadialGauge(markerPointer),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
