import 'package:flutter/material.dart';

class MapTwo extends StatefulWidget {
  const MapTwo({Key? key}) : super(key: key);

  @override
  State<MapTwo> createState() => _MapTwoState();
}

class _MapTwoState extends State<MapTwo> {
  @override
  Map name = {
    "data": [
      {
        "name": "fox",
        "age": 21,
        "School": "IP School",
      },
      {
        "name": "Ananya",
        "School": "Ashadeep",
        "age": 21,
      },
      {
        "name": "kriti",
        "School": "jd international",
        "age": 30,
      },
    ],
  };
  Map photoes = {
    "image": [
      {
        "asset": "assets/images/fox.png",
      },
      {
        "asset": "assets/images/ananya.webp",
      },
      {
        "asset": "assets/images/kriti.jpeg",
      }
    ],
  };
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 100,
                  color: Colors.yellowAccent,
                  child: Wrap(
                    children: [
                      Row(
                        children: [
                          index == 2
                              ? Text(
                                  "${name["data"][index]["name"]}\n${name["data"][index]["School"]}\n${name["data"][index]["age"]}")
                              : Icon(Icons.icecream_rounded),
                          Image.asset(
                            photoes["image"][index]["asset"],
                            fit: BoxFit.fill,
                            height: 200,
                            width: 200,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(color: Colors.pink, thickness: 4),
              itemCount: name["data"].length,
            ),
          ),
        ],
      ),
    );
  }
}
