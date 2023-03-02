import 'package:flutter/material.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: Container(
        height: 50,
        width: double.infinity,
        color: Colors.orange,
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint("button pressed");
        },
        backgroundColor: Colors.grey,
        splashColor: Colors.amberAccent,
        tooltip: "next",
        label: Row(
          children: [
            Icon(Icons.arrow_right_alt_rounded),
            Icon(Icons.arrow_right_alt_rounded),
            Icon(Icons.arrow_right_alt_rounded),
          ],
        ),
        foregroundColor: Colors.red,
      ),
    );
  }
}
