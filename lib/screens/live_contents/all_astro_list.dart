import 'dart:ui';

import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';

class AllAstrologerList extends StatefulWidget {
  const AllAstrologerList({super.key});

  @override
  State<AllAstrologerList> createState() => _AllAstrologerListState();
}

class _AllAstrologerListState extends State<AllAstrologerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: astroList.length,
            itemBuilder: (context, index) => AstroListContent(
                  image: astroList[index].image,
                  title: astroList[index].title,
                )),
      ),
    );
  }
}

class AstroList {
  late final String image, title;

  AstroList({
    required this.image,
    required this.title,
  });
}

List<AstroList> astroList = [
  AstroList(
      image: "assets/images/astrologers/astro5.jpg", title: "Sun-Mercury "),
  AstroList(image: "assets/images/astrologers/astro1.jpg", title: "Rahu Con"),
  AstroList(
      image: "assets/images/astrologers/astro6.jpg", title: "Sun-Mercury"),
  AstroList(image: "assets/images/astrologers/astro4.jpg", title: "Sun"),
];

class AstroListContent extends StatelessWidget {
  const AstroListContent({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: SizedBox(
            //height: 100,
            width: 265,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        //color: Colors.amber,
                        width: MediaQuery.of(context).size.width * 0.24,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                //color: Colors.amber,
                                border:
                                    Border.all(color: Colors.green, width: 1.5),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  image,
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  title,
                                  style: TextStyle(
                                      color: textColor(), fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Live Event",
                            style: TextStyle(color: textColor(), fontSize: 16),
                          ),
                          Text(
                            "09 Mar, Thursday",
                            style: TextStyle(color: textColor(), fontSize: 13),
                          ),
                          Text(
                            "11:55 AM",
                            style: TextStyle(color: textColor(), fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            widthFactor: 1.8,
                            alignment: Alignment.bottomRight,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.amber)),
                              child: const Text(
                                "Join Waitlist",
                                style: TextStyle(color: Colors.amber),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
