import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Map city = {
    "citylist": [
      {
        "city": "Surat",
        "state": "Gujrat",
        "population": "30k",
      },
      {
        "city": "Agra",
        "state": "Utterpradesh",
        "population": "20k",
      },
      {
        "city": "Vapi",
        "state": "Gujrat",
        "population": "2k",
      },
      {
        "city": "Pali",
        "state": "Rajasthan",
        "population": "2k",
      },
      {
        "city": "Ooty",
        "state": "Tamilnadu",
        "population": "1k",
      },
      {
        "city": "Agra",
        "state": "Utterpradesh",
        "population": "20k",
      },
      {
        "city": "Vapi",
        "state": "Gujrat",
        "population": "2k",
      },
      {
        "city": "Ooty",
        "state": "Tamilnadu",
        "population": "1k",
      },
      {
        "city": "Agra",
        "state": "Utterpradesh",
        "population": "20k",
      },
    ],
  };
  Map images = {
    "image_list": [
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
      {
        "path": "assets/images/maldives.jpg",
      },
    ],
  };
  Map icons = {
    "icon_list": [
      {
        "icon": Icons.co_present,
      },
      {
        "icon": Icons.icecream,
      },
      {
        "icon": Icons.account_circle,
      },
      {
        "icon": Icons.add_alert_sharp,
      },
      {
        "icon": Icons.ac_unit,
      },
      {
        "icon": Icons.co_present,
      },
      {
        "icon": Icons.account_balance,
      },
      {
        "icon": Icons.broken_image,
      },
      {
        "icon": Icons.qr_code_2_rounded,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Map", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: city["citylist"].length,
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        separatorBuilder: (context, index) => const SizedBox(height: 15),
        itemBuilder: (context, index) => ListTile(
          title: Column(
            children: [
              Text(
                "CityName:${city["citylist"][index]["city"]}",
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              Text(
                "Population:${city["citylist"][index]["population"]}",
                style: const TextStyle(fontWeight: FontWeight.w400),
              ),
            ],
          ),
          subtitle: Text("StateName: ${city["citylist"][index]["state"]}"),
          leading: CircleAvatar(
            backgroundImage: AssetImage(images["image_list"][index]["path"]),
          ),
          trailing: CircleAvatar(
            child:
                // Icon(Icons.ice_skating_outlined),
                // Icon(icons["icon_list"][index]["icon"]),
                Icon(icons["icon_list"][index]["icon"]),
            // Icon(Icons(icons["icon_list"][index]["icon"]),),
          ),
          tileColor: Colors.black26,
        ),
      ),
    );
  }
}
