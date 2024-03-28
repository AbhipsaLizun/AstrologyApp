import 'package:flutter/material.dart';

class EconomicalAstrologer extends StatefulWidget {
  const EconomicalAstrologer({super.key});

  @override
  State<EconomicalAstrologer> createState() => _EconomicalAstrologerState();
}

class _EconomicalAstrologerState extends State<EconomicalAstrologer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: astrologer.length,
            itemBuilder: ((context, index) => AstrologerNewContent(
                  image: astrologer[index].image,
                  title: astrologer[index].title,
                ))),
      ),
    );
  }
}

class EcoAstrologer {
  late final String image, title;

  EcoAstrologer({
    required this.image,
    required this.title,
  });
}

final List<EcoAstrologer> astrologer = [
  EcoAstrologer(
    image: "assets/images/astrologers/astro6.jpg",
    title: "Astrologer",
  ),
  EcoAstrologer(
    image: "assets/images/astrologers/astro5.jpg",
    title: "Astrologer",
  ),
  EcoAstrologer(
    image: "assets/images/astrologers/astro4.jpg",
    title: "Astrologer",
  ),
  EcoAstrologer(
    image: "assets/images/astrologers/astro1.jpg",
    title: "Astrologer",
  ),
  EcoAstrologer(
    image: "assets/images/astrologers/astro3.jpg",
    title: "Astrologer",
  ),
  EcoAstrologer(
    image: "assets/images/astrologers/astro2.jpg",
    title: "Astrologer",
  ),
];

class AstrologerNewContent extends StatelessWidget {
  const AstrologerNewContent(
      {super.key, required this.image, required this.title});

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 120,
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 3),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  image,
                  // height: 45,
                  // width: 45,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            left: 0,
            right: 0,
            child: Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.red,
                    gradient: LinearGradient(
                      end: Alignment.bottomCenter,
                      begin: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.9),
                      ],
                    ))),
          ),
          Positioned(
            bottom: 10,
            left: 30,
            right: 20,
            child: Text(title,
                style: const TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
