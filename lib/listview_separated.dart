import 'package:flutter/material.dart';

class ListviewSeparated extends StatefulWidget {
  const ListviewSeparated({Key? key}) : super(key: key);

  @override
  State<ListviewSeparated> createState() => _ListviewSeparatedState();
}

class _ListviewSeparatedState extends State<ListviewSeparated> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Container(
                height: 100,
                width: 200,
                color: Colors.yellowAccent,
                // child: Text("${name[index]}"),
                child: Image.asset("${image[index]}"),
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
