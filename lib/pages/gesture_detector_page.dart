import 'package:calculate_bmi/constants/constants.dart';
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeBackground,
      body: SafeArea(
        child: Center(
          child: Text(
            '1',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
