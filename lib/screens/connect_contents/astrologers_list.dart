import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';

class AstrologerList extends StatefulWidget {
  const AstrologerList({super.key});

  @override
  State<AstrologerList> createState() => _AstrologerListState();
}

class _AstrologerListState extends State<AstrologerList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: astrologer.length,
            itemBuilder: ((context, index) => AstrologerDetailContent(
                  image: astrologer[index].image,
                  title: astrologer[index].title,
                  orders: astrologer[index].orders,
                  fees: astrologer[index].fees,
                  cat: astrologer[index].cat,
                  language: astrologer[index].language,
                  exp: astrologer[index].exp,
                ))),
      ),
    );
  }
}

class AstrologerDetailsList {
  late final String image, title, orders, fees, cat, language, exp;

  AstrologerDetailsList({
    required this.image,
    required this.title,
    required this.orders,
    required this.fees,
    required this.cat,
    required this.language,
    required this.exp,
  });
}

final List<AstrologerDetailsList> astrologer = [
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro6.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro5.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro4.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro1.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro3.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro2.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro3.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
  AstrologerDetailsList(
    image: "assets/images/astrologers/astro1.jpg",
    title: "Astrologer",
    orders: '458',
    fees: 'Rs 15/min',
    cat: 'Numerology, vastu',
    language: 'Hindi, English',
    exp: '7 years',
  ),
];

class AstrologerDetailContent extends StatelessWidget {
  const AstrologerDetailContent(
      {super.key,
      required this.image,
      required this.title,
      required this.orders,
      required this.fees,
      required this.cat,
      required this.language,
      required this.exp});

  final String image, title, orders, fees, cat, language, exp;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      //color: Colors.amber,
                      height: 100,
                      width: 80,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          image,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SmoothStarRating(
                      rating: 3.0,
                      starCount: 5,
                      size: 12.0,
                      color: const Color.fromARGB(255, 255, 210, 7),
                      borderColor: const Color.fromARGB(255, 255, 210, 7),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      orders,
                      style: TextStyle(color: textColor()),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 8, bottom: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          title,
                          style: TextStyle(
                              color: textColor(),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: Text(
                            "Category:  $cat",
                            style: TextStyle(color: textColor(), fontSize: 13),
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Language : $language",
                          style: TextStyle(color: textColor(), fontSize: 13),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Exp : $exp",
                          style: TextStyle(color: textColor(), fontSize: 13),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Fees : $fees",
                          style: TextStyle(color: textColor(), fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 8, top: 12, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          "assets/images/tick.png",
                          height: 27,
                          width: 27,
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        // Container(
                        //   width: 65,
                        //   decoration: BoxDecoration(
                        //       border: Border.all(color: Colors.green),
                        //       borderRadius: BorderRadius.circular(8)),
                        //   child: const Padding(
                        //     padding: EdgeInsets.all(5.0),
                        //     child: Text(
                        //       "Chat",
                        //       style: TextStyle(color: Colors.green),
                        //       textAlign: TextAlign.center,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 20,
              left: 110,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Chat",
                              style: TextStyle(color: Colors.green),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Wait - 10 min",
                          style: TextStyle(
                              color: Color.fromARGB(255, 239, 90, 80),
                              fontSize: 10),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Call",
                              style: TextStyle(color: Colors.green),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Wait - 10 min",
                          style: TextStyle(
                              color: Color.fromARGB(255, 239, 90, 80),
                              fontSize: 10),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

// class AstrologerList extends StatefulWidget {
//   const AstrologerList({super.key});

//   @override
//   State<AstrologerList> createState() => _AstrologerListState();
// }

// class _AstrologerListState extends State<AstrologerList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: ListView.builder(
//             shrinkWrap: true,
//             scrollDirection: Axis.vertical,
//             itemCount: astrologer.length,
//             itemBuilder: ((context, index) => AstrologerDetailContent(
//                   image: astrologer[index].image,
//                   title: astrologer[index].title,
//                   // cat: astrologer[index].cat,
//                   // exp: astrologer[index].exp,
//                   // fees: astrologer[index].fees,
//                   // language: astrologer[index].language,
//                   // orders: astrologer[index].orders,
//                 ))),
//       ),
//     );
//   }
// }

// class AstrologerDetailsList {
//   late final String image, orders, title, cat, language, exp, fees;

//   AstrologerDetailsList({
//     required this.image,
//     required this.title,
//     // required this.orders,
//     // required this.cat,
//     // required this.language,
//     // required this.exp,
//     // required this.fees,
//   });
// }

// final List<AstrologerDetailsList> astrologer = [
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",

//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",
//     // orders: '458',
//     // fees: 'Rs 15/min',
//     // cat: 'Numerology, vastu',
//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",
//     // orders: '458',
//     // fees: 'Rs 15/min',
//     // cat: 'Numerology, vastu',
//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",
//     // orders: '458',
//     // fees: 'Rs 15/min',
//     // cat: 'Numerology, vastu',
//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",
//     // orders: '458',
//     // fees: 'Rs 15/min',
//     // cat: 'Numerology, vastu',
//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
//   AstrologerDetailsList(
//     image: "assets/images/astrologers/astro1.jpg",
//     title: "Astrologer",
//     // orders: '458',
//     // fees: 'Rs 15/min',
//     // cat: 'Numerology, vastu',
//     // language: 'Hindi, English',
//     // exp: '5 years',
//   ),
// ];

// class AstrologerDetailContent extends StatelessWidget {
//   const AstrologerDetailContent({
//     super.key,
//     required this.image,
//     required this.title,
//     // required this.orders,
//     // required this.fees,
//     // required this.cat,
//     // required this.language,
//     // required this.exp
//   });
//   final String image, title;
//   //orders, fees, cat, language, exp;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       body: Container(
//           height: MediaQuery.of(context).size.height,
//           // height: 150,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               color: Colors.white.withOpacity(0.2)),
//           child: Column(
//             children: [
//               Image.asset(
//                 image,
//                 height: 55,
//                 width: 55,
//               ),
//               Text(
//                 title,
//                 style: TextStyle(color: textColor()),
//               )
//             ],
//           )),
//     );
//   }
// }
