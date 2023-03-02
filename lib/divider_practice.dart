import 'package:flutter/material.dart';

class DividerPractice extends StatefulWidget {
  const DividerPractice({Key? key}) : super(key: key);

  @override
  State<DividerPractice> createState() => _DividerState();
}

class _DividerState extends State<DividerPractice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF080CEA),
      appBar: AppBar(),
      body: Container(
        height: 600,
        width: 600,
        color: Colors.white30,
        child: Column(
          children: [
            Container(
              color: Color(0xFF3F024C),
              height: 200,
              width: 450,
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.pink,
                      thickness: 10,
                      height: 250,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: Color(0xFFC10AE9),
                  ),
                  VerticalDivider(
                    color: Colors.white,
                    thickness: 20,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 5,
              indent: 50,
              endIndent: 50,
            ),
            Container(
              color: Colors.yellowAccent,
              height: 200,
              width: 250,
              child: VerticalDivider(
                color: Colors.green,
                thickness: 20,
              ),
            ),
            Row(
              children: [
                Card(
                  color: Colors.lightBlueAccent,
                  elevation: 200,
                  child: Container(
                    width: 200,
                    height: 160,
                    child: VerticalDivider(
                      color: Colors.white,
                      thickness: 5,
                      endIndent: 20,
                      indent: 20,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  backgroundImage: AssetImage("assets/images/fox.png"),
                  // foregroundImage: AssetImage("assets/images/ronaldo.jpg"),
                  radius: 80,
                  child: Divider(
                    thickness: 20,
                    color: Colors.green,
                  ),
                ),
                ColoredBox(
                  color: Colors.pink,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 90,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
