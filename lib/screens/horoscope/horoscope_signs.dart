import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';

class SunSigns {
  final String name, img;

  SunSigns({
    required this.name,
    required this.img,
  });
}

final List<SunSigns> signCategories = [
  SunSigns(name: "Aries", img: "assets/images/sunsigns/aries.png"),
  SunSigns(name: "Taurus", img: "assets/images/sunsigns/taurus.png"),
  SunSigns(name: "Gemini", img: "assets/images/sunsigns/gemini.png"),
  SunSigns(name: "Cancer", img: "assets/images/sunsigns/cancer.png"),
  SunSigns(name: "Libra", img: "assets/images/sunsigns/libra.png"),
  SunSigns(name: "Capricorn", img: "assets/images/sunsigns/capricorn.png"),
  SunSigns(name: "Leo", img: "assets/images/sunsigns/leo.png"),
  SunSigns(name: "Sagittarius", img: "assets/images/sunsigns/sagittarius.png"),
  SunSigns(name: "Aquarius", img: "assets/images/sunsigns/aquarius.png"),
  SunSigns(name: "Scorpion", img: "assets/images/sunsigns/scorpio.png"),
  SunSigns(name: "Virgo", img: "assets/images/sunsigns/virgo.png"),
  SunSigns(name: "Pisces", img: "assets/images/sunsigns/pisces.png"),
];

class SunSignContent extends StatefulWidget {
  const SunSignContent({super.key});

  @override
  State<SunSignContent> createState() => _SunSignContentState();
}

class _SunSignContentState extends State<SunSignContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(
          itemCount: signCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 45,
                    width: 45,
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(80.0),
                      // border: Border.all(color: Colors.green, width: 2)
                    ),
                    child:
                        Center(child: Image.asset(signCategories[index].img)),
                  ),
                ),
                Text(
                  signCategories[index].name,
                  style: TextStyle(color: textColor(), fontSize: 12),
                )
              ],
            );
          }),
    );
  }
}
