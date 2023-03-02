import 'package:flutter/material.dart';

class FootBaller extends StatefulWidget {
  const FootBaller({Key? key}) : super(key: key);

  @override
  State<FootBaller> createState() => _FootBallerState();
}

class _FootBallerState extends State<FootBaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/ronaldo_two.webp",
                      ),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20),
                      right: Radius.elliptical(12, 12)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 130),
                child: Container(
                  height: 125,
                  width: 280,
                  decoration: const BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 220, left: 57),
                child: Text(
                  "Cristiano Ronaldo #54",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            "Ronaldo is Portuguese professional\nfootballer who plays as a forward and captains \nthe Portugal national team,\nWidely regarded as one of the greatest\nplayers of all time..... ",
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
          ),
          const SizedBox(
            height: 33,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 160),
            child: Text(
              "This Season Stats",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Stack(
                  children: [
                    Container(
                      height: 88,
                      width: 205,
                      decoration: BoxDecoration(
                          color: Color(0xB903AC18),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, top: 11.5),
                      child: Container(
                        height: 65,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20, top: 35),
                      child: Text(
                        "112 Goals",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 110, top: 14),
                      child: Text(
                        "101 Leagues\nMatchs",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 110, top: 55),
                      child: Text(
                        "Superliga",
                        style: TextStyle(color: Color(0xFF04764E)),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 88,
                      width: 105,
                      decoration: const BoxDecoration(
                          color: Color(0xB903AC18),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11, top: 11.5),
                      child: Container(
                        height: 65,
                        width: 94,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 35, top: 35),
                      child: Text(
                        "9 Assist",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 44,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xFFE0E1E2),
              borderRadius: BorderRadius.circular(15),
            ),
            alignment: Alignment.center,
            child: const Text(
              "ACTIVE ACTIONS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Image(
            image: AssetImage("assets/images/fluctuation.png"),
            height: 150,
          )
        ],
      ),
    );
  }
}
