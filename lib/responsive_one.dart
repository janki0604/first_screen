import 'package:flutter/material.dart';

class Responsive extends StatefulWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  State<Responsive> createState() => _ResponsiveState();
}

class _ResponsiveState extends State<Responsive> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    double textSize = MediaQuery.textScaleFactorOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            height: height * 0.10,
            width: width / 5,
            margin: EdgeInsets.all(20).copyWith(left: 20),
          ),
          Text(
            "janu",
            style: TextStyle(
              fontSize: textSize * 20,
            ),
          ),
        ],
      ),
    );
  }
}
