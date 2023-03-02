import 'package:flutter/material.dart';

class GridviewCount extends StatefulWidget {
  const GridviewCount({Key? key}) : super(key: key);

  @override
  State<GridviewCount> createState() => _GridviewCountState();
}

class _GridviewCountState extends State<GridviewCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(50),
        children: [
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Color(0xFF032661),
            child: Text(
              "Hello",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
