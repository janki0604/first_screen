import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({Key? key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E5E5),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color(0xFFDF821E),
                height: 230,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 9),
                            child: Icon(
                              Icons.menu_outlined,
                              size: 22,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 18,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 9),
                            child: Icon(Icons.notifications,
                                size: 22, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Container(
                          height: 45,
                          width: 340,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search_rounded,
                            size: 33,
                            color: Colors.grey,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            "Search service",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40, top: 163),
                height: 130,
                width: 280,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 18,
                    ),
                    const Text(
                      "Get\nservices\nfrom Home",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xFFDF821E),
                          size: 25,
                        ),
                        Icon(
                          (Icons.directions_car_filled_rounded),
                          size: 61,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Text("Near You",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
              Text(
                "See all",
                style: TextStyle(color: Color(0xFFDF821E)),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 91,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 79,
                      width: 68,
                      decoration: const BoxDecoration(
                          color: Color(0xFFDF821E),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    const Icon(
                      Icons.directions_car_filled_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.access_time_filled_rounded,
                              size: 19, color: Color(0xFFDF821E)),
                        ),
                        Text(
                          "8 am - 5pm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFDF821E),
                            size: 19,
                          ),
                        ),
                        Text("4.5", style: TextStyle(color: Color(0xFFDF821E))),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 45),
                      child: Text(
                        "Gotham Car Repairation",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Text(
                      "House 57,Road 8,Block A,Brimingham",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 91,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 79,
                      width: 68,
                      decoration: const BoxDecoration(
                          color: Color(0xFFDF821E),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    const Icon(
                      Icons.directions_bike_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.access_time_filled_rounded,
                              size: 19, color: Color(0xFFDF821E)),
                        ),
                        Text(
                          "8 am - 5pm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFDF821E),
                            size: 19,
                          ),
                        ),
                        Text("4.5", style: TextStyle(color: Color(0xFFDF821E))),
                      ],
                    ),
                    const Padding(
                      padding: const EdgeInsets.only(right: 85),
                      child: Text(
                        "Gotham auto moto",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Text(
                      "House 57,Road 8,Block A,Brimingham",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 91,
            width: 340,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 79,
                      width: 68,
                      decoration: const BoxDecoration(
                          color: Color(0xFFDF821E),
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                    ),
                    const Icon(
                      Icons.directions_car_filled_rounded,
                      color: Colors.white,
                      size: 35,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.access_time_filled_rounded,
                              size: 19, color: Color(0xFFDF821E)),
                        ),
                        Text(
                          "8 am - 5pm",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(
                            Icons.star,
                            color: Color(0xFFDF821E),
                            size: 19,
                          ),
                        ),
                        Text("4.5", style: TextStyle(color: Color(0xFFDF821E))),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 45),
                      child: Text(
                        "Gotham Car Repairation",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const Text(
                      "House 57,Road 8,Block A,Brimingham",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 56,
            width: 250,
            decoration: BoxDecoration(
                color: Color(0xFFC7C4C4),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.design_services_outlined)),
              ],
            ),
          ),
        ],
      ),
    ); //account circle outlined
  }
}
