import 'package:flutter/material.dart';

class CarWash extends StatefulWidget {
  const CarWash({Key? key}) : super(key: key);

  @override
  State<CarWash> createState() => _CarWashState();
}

class _CarWashState extends State<CarWash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 24,
        ),
        title: const Text("Machine 1",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w700)),
      ),
      bottomSheet: Container(
        height: 70,
        width: 400,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Color(0xFF898989),
            blurRadius: 4,
            spreadRadius: 0.05,
          ),
        ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.analytics_outlined,
                  size: 36,
                  color: Color(0xFF00AB6C),
                ),
                Icon(
                  Icons.star_border,
                  size: 36,
                  color: Color(0xFF898989),
                ),
                Icon(
                  Icons.report_problem,
                  size: 36,
                  color: Color(0xFF898989),
                ),
                Icon(
                  Icons.person_remove_sharp,
                  size: 36,
                  color: Color(0xFF898989),
                ),
                Icon(
                  Icons.settings,
                  size: 36,
                  color: Color(0xFF898989),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Stats",
                  style: TextStyle(
                    color: Color(0xFF00AB6C),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Issues",
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Issues",
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Issues",
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Issues",
                  style: TextStyle(
                    color: Color(0xFF898989),
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 303,
            width: 428,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Wrap(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 170,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  border: Border.all(
                                      color: Color(0xFFEAEAEA), width: 2)),
                            ),
                            Image.asset(
                              "assets/images/machine.png",
                              width: 124,
                              height: 154,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Machine Status",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                height: 28,
                                width: 142,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  color: Color(0xFFE7FBF4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.check_circle_outline_rounded,
                                      size: 15,
                                      color: Color(0xFF00AB6C),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Operate Normally",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12,
                                          color: Color(0xFF00AB6C)),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.circle_rounded,
                                    size: 12,
                                    color: Color(0xFF00AB6C),
                                  ),
                                  Text(
                                    "Foam",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 12,
                                width: 150,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                                child: Wrap(
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 136,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00DD8D),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(3),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.water_drop_rounded,
                                    size: 12,
                                    color: Color(0xFF00AB6C),
                                  ),
                                  Text(
                                    "Water",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 12,
                                width: 150,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEAEAEA),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                                child: Wrap(
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 136,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00AB6C),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(3),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    right: 240,
                  ),
                  child: Text(
                    "Machine Adress",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 150, bottom: 20),
                  child: Text(
                    "1234 Address St. Georgia",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 1150,
            width: 428,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            height: 58,
                            width: 172,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child: const Text(
                              "Daily Stats",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: Color(0xFF00AB6C)),
                            ),
                          ),
                          Container(
                            height: 5,
                            width: 172,
                            color: Color(0xFF00AB6C),
                          ),
                        ],
                      ),
                      Container(
                        height: 58,
                        width: 172,
                        color: Colors.white,
                        alignment: Alignment.center,
                        child: const Text(
                          "Monthly Stats",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Color(0xFF898989)),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 0,
                    color: Colors.grey,
                    thickness: 0.2,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      itemBuilder: ((context, index) => Stack(
                            children: [
                              Container(
                                height: 161,
                                width: 330,
                                color: Colors.white,
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  height: 120,
                                  width: 308,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.elliptical(8, 8)),
                                      border: Border.all(
                                          color: Color(0xFFEAEAEA),
                                          width: 1.4)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "35",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28),
                                          ),
                                          Text(
                                            "108",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28),
                                          ),
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Text(
                                            "Washes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13,
                                                color: Color(0xFF898989)),
                                          ),
                                          Text(
                                            "Minutes",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13,
                                                color: Color(0xFF898989)),
                                          ),
                                          Text(
                                            "Ratings",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13,
                                                color: Color(0xFF898989)),
                                          ),
                                        ],
                                      ),
                                      const Divider(
                                        height: 0,
                                        color: Colors.grey,
                                        thickness: 0.4,
                                      ),
                                      Row(
                                        children: const [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text(
                                            "Total Revenue",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13,
                                                color: Color(0xFF898989)),
                                          ),
                                          SizedBox(
                                            width: 150,
                                          ),
                                          Text(
                                            "\$970",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 17,
                                                color: Color(0xFF00AB6C)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xFF00AB6C),
                                    size: 20,
                                  ),
                                  Text(
                                    "Tue,Sep 13(Today)",
                                    style: TextStyle(
                                        color: Color(0xFF898989),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 12.5,
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 12.5,
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 12.5,
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 12.5,
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 12.5,
                  // ),
                  // Stack(
                  //   children: [
                  //     Container(
                  //       height: 161,
                  //       width: 330,
                  //       color: Colors.white,
                  //       alignment: Alignment.bottomRight,
                  //       child: Container(
                  //         height: 120,
                  //         width: 308,
                  //         decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: const BorderRadius.all(
                  //                 Radius.elliptical(8, 8)),
                  //             border: Border.all(
                  //                 color: Color(0xFFEAEAEA), width: 1.4)),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "35",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "108",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //                 Text(
                  //                   "4.3",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 28),
                  //                 ),
                  //               ],
                  //             ),
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceAround,
                  //               children: const [
                  //                 Text(
                  //                   "Washes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Minutes",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 Text(
                  //                   "Ratings",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               height: 0,
                  //               color: Colors.grey,
                  //               thickness: 0.4,
                  //             ),
                  //             Row(
                  //               children: const [
                  //                 SizedBox(
                  //                   width: 20,
                  //                 ),
                  //                 Text(
                  //                   "Total Revenue",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 13,
                  //                       color: Color(0xFF898989)),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 150,
                  //                 ),
                  //                 Text(
                  //                   "\$970",
                  //                   style: TextStyle(
                  //                       fontWeight: FontWeight.w700,
                  //                       fontSize: 17,
                  //                       color: Color(0xFF00AB6C)),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.circle,
                  //           color: Color(0xFF00AB6C),
                  //           size: 20,
                  //         ),
                  //         Text(
                  //           "Tue,Sep 13(Today)",
                  //           style: TextStyle(
                  //               color: Color(0xFF898989),
                  //               fontSize: 13,
                  //               fontWeight: FontWeight.w600),
                  //         ),
                  //       ],
                  //     )
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
