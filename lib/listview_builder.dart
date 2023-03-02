import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
  const ListviewBuilder({Key? key}) : super(key: key);

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink,
        width: 300,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Text("janudi"),
                padding: EdgeInsets.all(80),
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                reverse: true,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Image.asset(
                    "assets/images/california.jpg",
                    height: 50,
                    width: 50,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
