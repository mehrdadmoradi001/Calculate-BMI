import 'package:calculate_bmi/constants/constants.dart';
import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeBackground,
      body: SafeArea(
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
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  setState(() {
                    counter = counter - 1;  //
                  });
                },
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.white.withOpacity(0.7),  //
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
