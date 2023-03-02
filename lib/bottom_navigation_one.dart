import 'package:first_screen/listview_separated.dart';
import 'package:first_screen/responsive_one.dart';
import 'package:first_screen/rintones.dart';
import 'package:flutter/material.dart';

import 'map_one.dart';

class BottomNavigationOne extends StatefulWidget {
  const BottomNavigationOne({Key? key}) : super(key: key);

  @override
  State<BottomNavigationOne> createState() => _BottomNavigationOneState();
}

class _BottomNavigationOneState extends State<BottomNavigationOne> {
  int? navigationIndex = 0;
  List screen = [
    MapOne(),
    Responsive(),
    Ringtones(),
    ListviewSeparated(),
  ];
  int? index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index!],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade500,
        currentIndex: navigationIndex!,
        elevation: 50,
        onTap: (value) {
          debugPrint("value ---------->> $value");
          navigationIndex = value;
          index = value;
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ".",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
