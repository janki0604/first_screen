import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        // heightFactor: 20,
        heightFactor: 6,
        widthFactor: 0,
        child: Container(
          color: Colors.green,
          child: Text(
            'Center Widget',
            textScaleFactor: 3,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
