import 'package:flutter/material.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({Key? key}) : super(key: key);

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 18,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.all(50),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1,

                // mainAxisExtent: 200,
              ),
              itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                color: Color(0xFF032661),
                child: Text(
                  "Hello\n\n${index + 1}",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
