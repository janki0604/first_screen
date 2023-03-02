import 'package:flutter/material.dart';

class MapOne extends StatefulWidget {
  const MapOne({Key? key}) : super(key: key);

  @override
  State<MapOne> createState() => _MapOneState();
}

class _MapOneState extends State<MapOne> {
  @override
  Map stdData = {
    "stdList": [
      {
        "name": "janki",
        "age": 22,
      },
      {
        "name": "jay",
        "age": 18,
      },
      {
        "name": "pranu",
        "age": "15",
      },
      {
        "name": "hastu",
        "age": "5",
      },
      {
        "name": "rushi",
        "age": "20",
      },
    ],
  };

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 80,
            width: 100,
            color: Colors.green,
            alignment: Alignment.centerLeft,
            child: const Text(
              "Name data",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: stdData["stdList"].length,
              padding: const EdgeInsets.all(15),
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(height: 15),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Name: ${stdData["stdList"][index]["name"]}"),
                  subtitle: Text("Age: ${stdData["stdList"][index]["age"]}"),
                  leading: const CircleAvatar(),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  tileColor: Colors.red,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
