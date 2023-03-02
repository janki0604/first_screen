import 'package:flutter/material.dart';

class Fox extends StatefulWidget {
  const Fox({Key? key}) : super(key: key);

  @override
  State<Fox> createState() => _FoxState();
}

class _FoxState extends State<Fox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.close,
        ),
        elevation: 0,
        title: Text("complete Listing"),
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(
                "assets/images/fox.png",
              ),
              height: 100,
              width: 100,
            ),
            Text("Signature Request ",
                style: TextStyle(
                    color: Color(0xF90B26D2),
                    fontWeight: FontWeight.bold,
                    fontSize: 26)),
            SizedBox(
              height: 15,
            ),
            Text(
              "https://ossea.io",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xF90B26D2),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Ox71CA8485676f...8848f8E696",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.symmetric(
                      horizontal: BorderSide(color: Colors.grey, width: 0.2))),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/cartoon_two.jpeg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Nekochimin",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Nekochimin #477",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Quantity:1",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "price",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "️0.075",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "#95.78",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(width: 0.2, color: Colors.grey),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Icon(Icons.forward_to_inbox_outlined),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 0.2,
                    color: Colors.grey,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text(
                    "offerer:\nOx731Ca685745fj563890867453f5647\noffer:0;\nitemType:1\ntoken:\nOx7cB3fDbjfkjsgybOagdbTbf#425Gdys\nindentifierOrCriteria:O\nstartAmount:\n10000000000000000",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // color: Colors.black,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(width: 33),
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color(0xFFECEEFF),
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF4353FF),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 50,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Color(0xFF4353FF),
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  child: Text(
                    "sign",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFECEEFF),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
