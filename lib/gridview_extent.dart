import 'package:flutter/material.dart';

class GridviewExtent extends StatefulWidget {
  const GridviewExtent({Key? key}) : super(key: key);

  @override
  State<GridviewExtent> createState() => _GridviewExtentState();
}

class _GridviewExtentState extends State<GridviewExtent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(50),
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: const Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
