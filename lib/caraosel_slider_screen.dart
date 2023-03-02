import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CaraoselSliderScreen extends StatefulWidget {
  const CaraoselSliderScreen({Key? key}) : super(key: key);

  @override
  State<CaraoselSliderScreen> createState() => _CaraoselSliderScreenState();
}

class _CaraoselSliderScreenState extends State<CaraoselSliderScreen> {
  CarouselController buttonCarouselController = CarouselController();
  double? percentage = 0.25;
  double? initialIndex = 0;
  List image = [
    "assets/images/newyork.jpg",
    "assets/images/maldives.jpg",
    "assets/images/california.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("caraosel slider"),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              FloatingActionButton(
                onPressed: () {},
              ),

              ///second type
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: image.length,
                  carouselController: buttonCarouselController,
                  itemBuilder: (context, index, realIndex) => Column(
                    children: [
                      Text(
                        "Find perfect choice for gjgdbb\nghsdfghf",
                        style: TextStyle(fontSize: 20),
                      ),
                      Expanded(
                        child: Container(
                          // height: double.infinity,
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                image[index],
                              ),
                              fit: BoxFit.fill,
                            ),
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        debugPrint(
                            "print -->>$reason-->>>$index--->>$initialIndex");
                        setState(() {
                          if (initialIndex == index)
                            percentage = percentage! + 0.25;
                          //  (percentage! >= 0 && percentage! <= 1)
                        });
                      },
                      height: double.infinity,
                      initialPage: 0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8),
                ),
              ),
            ],
          ),
          Column(
            children: [
              LinearPercentIndicator(
                animation: true,
                width: 140.0,
                lineHeight: 14.0,
                percent: percentage!,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      buttonCarouselController.previousPage(
                        duration: Duration(milliseconds: 300),
                      );
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      buttonCarouselController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.linear);
                      initialIndex = initialIndex! + 1;
                      // initialIndex!+1;
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

///first type
// Expanded(
//   child: CarouselSlider(
//     carouselController: buttonCarouselController,
//     options: CarouselOptions(
//       height: double.infinity,
//       aspectRatio: 16 / 9,
//       viewportFraction: 0.8,
//       initialPage: 0,
//       enableInfiniteScroll: true,
//       reverse: false,
//       autoPlay: false,
//       autoPlayInterval: Duration(seconds: 3),
//       autoPlayAnimationDuration: Duration(milliseconds: 800),
//       autoPlayCurve: Curves.fastOutSlowIn,
//       enlargeCenterPage: true,
//       enlargeFactor: 0.3,
//       // onPageChanged: callbackFunction,
//       scrollDirection: Axis.horizontal,
//     ),
//     items: [
//       1,
//       2,
//       3,
//     ].map((i) {
//       return Builder(
//         builder: (BuildContext context) {
//           return Column(
//             children: [
//               Text(
//                 "Find perfect choice for gjgdbb\nghsdfghf",
//                 style: TextStyle(fontSize: 20),
//               ),
//               Expanded(
//                 child: Container(
//                   // height: double.infinity,
//                   width: double.infinity,
//                   margin: EdgeInsets.symmetric(horizontal: 5.0),
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                         image[i - 1],
//                       ),
//                       fit: BoxFit.fill,
//                     ),
//                     color: Colors.amber,
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     }).toList(),
//   ),
// ),
