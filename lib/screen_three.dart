import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double textSize = MediaQuery.textScaleFactorOf(context);
    return SafeArea(
      child: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              height: height * 0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: height / 14,
                    width: height / 14,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFD7D9DB),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color(0xFF444251),
                    ),
                  ),
                  Text(
                    "Hot🌶️Food",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: textSize / 0.066,
                      color: const Color(0xFF444251),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Icon(
                      Icons.search,
                      size: textSize / 0.040,
                      color: const Color(0xFF444251),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset(
                      "assets/images/icon.png",
                      fit: BoxFit.fill,
                      height: height / 23,
                      width: height / 23,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width / 3.5),
              child: Text(
                "Populaire\ndans votre quartier",
                style: TextStyle(
                    color: const Color(0xFF444251),
                    fontSize: textSize / 0.050,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                          top: height / 25,
                          left: width / 20,
                          right: width / 22,
                        ),
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) => Stack(
                              // alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: height / 3.4,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(27),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xFFD7D9DB),
                                        blurRadius: 30,
                                        spreadRadius: 1,
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Buddha Bowl Rice",
                                        style: TextStyle(
                                          fontSize: textSize / 0.090,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(right: width / 7),
                                        child: Text(
                                          "22.50€",
                                          style: TextStyle(
                                            fontSize: textSize / 0.070,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF444251),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Text(
                                        "⭐4.9 ⏰ 20-25 Min",
                                        style: TextStyle(
                                          fontSize: textSize / 0.1,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 50,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: height / 6.3,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFc4c4c4),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ],
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: 5),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                          top: height / 25,
                          left: width / 20,
                          right: width / 22,
                        ),
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) => Stack(
                              // alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: height / 3.4,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(27),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xFFD7D9DB),
                                        blurRadius: 30,
                                        spreadRadius: 1,
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Buddha Bowl Rice",
                                        style: TextStyle(
                                          fontSize: textSize / 0.090,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(right: width / 7),
                                        child: Text(
                                          "22.50€",
                                          style: TextStyle(
                                            fontSize: textSize / 0.070,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF444251),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Text(
                                        "⭐4.9 ⏰ 20-25 Min",
                                        style: TextStyle(
                                          fontSize: textSize / 0.1,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 50,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: height / 6.3,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFc4c4c4),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ],
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: 5),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.only(
                          right: width / 22,
                          left: width / 22,
                          top: height / 100,
                        ),
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        itemBuilder: (context, index) => Stack(
                              // alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                  height: height / 3.4,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(27),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0xFFD7D9DB),
                                        blurRadius: 30,
                                        spreadRadius: 1,
                                        offset: Offset(5, 5),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    // crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        "Buddha Bowl Rice",
                                        style: TextStyle(
                                          fontSize: textSize / 0.090,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(right: width / 7),
                                        child: Text(
                                          "22.50€",
                                          style: TextStyle(
                                            fontSize: textSize / 0.070,
                                            fontWeight: FontWeight.w500,
                                            color: const Color(0xFF444251),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 80,
                                      ),
                                      Text(
                                        "⭐4.9 ⏰ 20-25 Min",
                                        style: TextStyle(
                                          fontSize: textSize / 0.1,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xFF444251),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 50,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: height / 6.3,
                                  width: width / 2.4,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFc4c4c4),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                ),
                              ],
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 20,
                            ),
                        itemCount: 5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
