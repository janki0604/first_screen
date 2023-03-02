import 'package:flutter/material.dart';

class Shape extends StatefulWidget {
  const Shape({Key? key}) : super(key: key);

  @override
  State<Shape> createState() => _ShapeState();
}

class _ShapeState extends State<Shape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          height: 50,
          child: Container(
            width: 200,
            height: 50,
            color: Colors.pink,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 100,
                decoration: const BoxDecoration(
                    // shape: BoxShape.circle,
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.elliptical(20, 30))),
              ),
              Container(
                height: 300,
                width: 100,
                decoration: const BoxDecoration(
                    // shape: BoxShape.circle,
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.elliptical(20, 30))),
              ),
              Card(
                color: Colors.lightBlueAccent,
                elevation: 30,
                shadowColor: Colors.yellow,
                child: Image.asset("assets/images/kiara.jpeg",
                    width: 200, height: 200),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ],
          ),
        ));
  }
}
