import 'dart:developer';

import 'package:astrology_app/screens/blog.dart';
import 'package:astrology_app/screens/daily_tarot.dart';
//import 'package:astrology_app/screens/home_page.dart';
import 'package:astrology_app/screens/profile_stories.dart';
import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/services.dart';
import '../utils/menu_content.dart';
import 'categories.dart';
import 'connect_screen.dart';
import 'daily_horoscope.dart';

class Dashboard extends StatefulWidget {
  //const Dashboard({super.key});

  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  //final GlobalKey<ScaffoldState> _key = GlobalKey();
  ServiceController serviceController = Get.find<ServiceController>();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // key: _key,
      drawer: drawerContent(),
      backgroundColor: Colors.black,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    //color: Colors.amber,
                    margin: const EdgeInsets.only(top: 45),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Obx(() {
                              //return
                              GestureDetector(
                                onTap: () {
                                  serviceController.menuslide();
                                  //opendrawer();
                                  // ignore: unrelated_type_equality_checks
                                  // serviceController.menuStatusValue == 0.obs
                                  //     ? serviceController.menuStatusValue =
                                  //         1.obs
                                  //     : serviceController.menuStatusValue =
                                  //         0.obs;

                                  log("message ${serviceController.menuStatusValue}");
                                },
                                child: const SizedBox(
                                  height: 40,
                                  width: 38,
                                  //color: Colors.amber,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.menu_outlined,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              // }),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.search_sharp,
                                    size: 22,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 25,
                                    height: 22,
                                    child: Image.asset(
                                      "assets/images/uil_language.png",
                                      height: 20,
                                      width: 10,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  SizedBox(
                                    width: 25,
                                    height: 22,
                                    child: Image.asset(
                                      "assets/images/notification.png",
                                      height: 20,
                                      width: 10,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Center(
                          child: Text(
                            "Hello Dev",
                            style: GoogleFonts.aBeeZee(
                                color: textColor(), fontSize: 15),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Text(
                          "See what's on your fortune",
                          style: GoogleFonts.aBeeZee(
                              color: textColor(),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Your daily horoscope report",
                          style: GoogleFonts.aBeeZee(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Image.asset("assets/images/radial_img1.png"),
                        ),
                      ],
                    ),
                  ),
                  //...........Gradient..........//
                  // Positioned(
                  //     bottom: 0,
                  //     child: Container(
                  //       width: width,
                  //       height: 100,
                  //       decoration: BoxDecoration(
                  //           gradient: LinearGradient(
                  //               begin: Alignment.topCenter,
                  //               end: Alignment.bottomCenter,
                  //               colors: [
                  //             Colors.transparent,
                  //             Colors.white.withOpacity(0.9)
                  //           ])),
                  //     )),
                ],
              ),
              //....................Stories , Connect.....................//
              SizedBox(
                width: width,
                //color: Colors.white.withOpacity(0.9),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 12),
                        child: Text(
                          "Stories",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 65,
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: const ProfileStoriesList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 12),
                        child: Text(
                          "Connect",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      height: 150,
                      //color: Colors.amber,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 15),
                      child: const ConnectScreen(),
                    ),
                  ],
                ),
              ),
              //.................Categories..................//
              SizedBox(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 10),
                        child: Text(
                          "Categories",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(12)),
                      //height: 245,
                      height: MediaQuery.of(context).size.height * 0.35,
                      child: const Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CategoriesList(),
                      ),
                    ),
                  ],
                ),
              ),

              //........................Daily Tarot.....................//
              SizedBox(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          "Daily Tarot",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      //height: 165,
                      height: MediaQuery.of(context).size.height * 0.23,
                      //color: Colors.amber,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 12),
                      child: const DailyTarot(),
                    ),
                  ],
                ),
              ),
              //........................Daily Horoscope.....................//
              SizedBox(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 13),
                        child: Text(
                          "Daily Horoscope",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      //height: 500,
                      height: MediaQuery.of(context).size.height * 0.60,
                      //color: Colors.amber,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 12),
                      child: const DailyHoroscope(),
                    ),
                  ],
                ),
              ),
              //......................Blog.....................//
              SizedBox(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 13),
                        child: Text(
                          "Blog",
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Container(
                      //height: 165,
                      height: MediaQuery.of(context).size.height * 0.23,
                      //color: Colors.amber,
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 12),
                      child: const BlogPage(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerContent() {
    return Container(
      color: Colors.grey[900],
      width: MediaQuery.of(context).size.width * 0.65,
      //height: MediaQuery.of(context).size.height * 0.90,
      height: double.infinity,
      child: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Flexible(child: MenuContent())),
    );
  }

  void opendrawer() {
    // setState(() {
    //   // HomePage.val == 0 ? HomePage.val = 1 : HomePage.val = 0;
    // });
  }
}
