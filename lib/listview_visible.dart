import 'package:flutter/material.dart';

class ListviewVisible extends StatefulWidget {
  const ListviewVisible({Key? key}) : super(key: key);

  @override
  State<ListviewVisible> createState() => _ListviewVisibleState();
}

class _ListviewVisibleState extends State<ListviewVisible> {
  @override
  List<String> name = [
    "JANKI",
    "JAY",
    "HAST",
    "PRANU",
    "REEVA",
    "AADHU",
  ];
  List<String> image = [
    "assets/images/ananya.webp",
    "assets/images/california.jpg",
    "assets/images/disha.jpg",
    "assets/images/maldives.jpg",
    "assets/images/rashmika.jpg",
    "assets/images/kriti.jpeg",
    "assets/images/kiara.jpeg",
    "assets/images/jacqueline.jpeg",
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Visibility(
                visible: index == 1,
                replacement: Text("hey!!"),
                child: Container(
                  height: 100,
                  width: 200,
                  color: Colors.yellowAccent,
                  child: Image.asset("${image[index]}"),
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                color: Colors.lightBlueAccent,
                thickness: 1,
              ),
              itemCount: image.length,
              reverse: true,
              physics: ClampingScrollPhysics(),
              padding: EdgeInsets.all(50),
            ),
          ),
        ],
      ),
    );
  }
}
