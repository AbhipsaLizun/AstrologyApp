import 'package:flutter/material.dart';
import '../../utils/properties.dart';
import 'monthly_horoscope.dart';

class HoroscopeContentScreen extends StatefulWidget {
  const HoroscopeContentScreen({super.key});

  @override
  State<HoroscopeContentScreen> createState() => _HoroscopeContentScreenState();
}

class _HoroscopeContentScreenState extends State<HoroscopeContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 10, left: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your daily horoscope is ready!",
                        style: TextStyle(color: textColor(), fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text("Lucky colors",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                              const SizedBox(
                                height: 5,
                              ),
                              const Icon(
                                Icons.circle,
                                color: Colors.pink,
                                size: 22,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("Lucky Number",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("06",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              Text("Mood of day",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                              const SizedBox(
                                height: 5,
                              ),
                              const Icon(
                                Icons.emoji_emotions_outlined,
                                color: Colors.amber,
                                size: 22,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("Lucky Time",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                              const SizedBox(
                                height: 8,
                              ),
                              Text("06:11 PM",
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //.........sunsign Image...................//
                      SizedBox(
                        height: 120,
                        width: 110,
                        child: Image.asset("assets/images/sunsigns/aries.png"),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //.........sunsign name...................//
                      Text(
                        "Aries",
                        style: TextStyle(color: textColor(), fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Daily Horoscope",
                    style: TextStyle(color: textColor(), fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //...................Love container........................//
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Love",
                                style:
                                    TextStyle(color: textColor(), fontSize: 14),
                              ),
                              const Spacer(),
                              const Text(
                                "60%",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Inject a bright beautiful and glorious picture in your mind to uplift your spirits. Finances improve later in the day.",
                            style: TextStyle(color: textColor()),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //...................Career container........................//
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.shopping_bag,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Career",
                                style:
                                    TextStyle(color: textColor(), fontSize: 14),
                              ),
                              const Spacer(),
                              const Text(
                                "80%",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Inject a bright beautiful and glorious picture in your mind to uplift your spirits. Finances improve later in the day.",
                            style: TextStyle(color: textColor()),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //...................Money container........................//
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.money_rounded,
                                color: Colors.green,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Money",
                                style:
                                    TextStyle(color: textColor(), fontSize: 14),
                              ),
                              const Spacer(),
                              const Text(
                                "40%",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Inject a bright beautiful and glorious picture in your mind to uplift your spirits. Finances improve later in the day.",
                            style: TextStyle(color: textColor()),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //...................Travel container........................//
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.flight,
                                color: Colors.grey,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Travel",
                                style:
                                    TextStyle(color: textColor(), fontSize: 14),
                              ),
                              const Spacer(),
                              const Text(
                                "40%",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Inject a bright beautiful and glorious picture in your mind to uplift your spirits. Finances improve later in the day.",
                            style: TextStyle(color: textColor()),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 200, child: HoroscopeStudy()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
