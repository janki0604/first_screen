import 'package:flutter/material.dart';

class Ringtones extends StatefulWidget {
  const Ringtones({Key? key}) : super(key: key);

  @override
  State<Ringtones> createState() => _RingtonesState();
}

class _RingtonesState extends State<Ringtones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Reminder Ringtone",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900)),
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        elevation: 0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Asteroid",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:56"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Automic Bell",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("1:18"),
                    Icon(
                      Icons.pause_circle,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_checked, color: Colors.red),
                    Text(
                      "Beep Once",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:25"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Beep-Beep",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:50"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Chime Time",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("1:26"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Comet",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:49"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Cosmos",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:57"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "Finding Galaxy",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("0:44"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color(0xF6E9E6E6),
                  borderRadius: BorderRadius.all(
                    Radius.elliptical(8, 8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.radio_button_off, color: Colors.red),
                    Text(
                      "National Anthem",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    Text("1:32"),
                    Icon(
                      Icons.play_circle,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
