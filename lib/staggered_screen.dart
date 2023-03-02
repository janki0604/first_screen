import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredScreen extends StatefulWidget {
  const StaggeredScreen({Key? key}) : super(key: key);

  @override
  State<StaggeredScreen> createState() => _StaggeredScreenState();
}

class _StaggeredScreenState extends State<StaggeredScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 8,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                repeatPattern: QuiltedGridRepeatPattern.inverted,
                pattern: [
                  QuiltedGridTile(2, 3),
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(2, 1),
                  QuiltedGridTile(2, 2),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage("assets/images/maldives.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
