import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'all_astro_list.dart';
import 'category.dart';
import 'economical_astro.dart';
import 'new_astrologer.dart';
import 'trending_astrologer.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 70, top: 40),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Live",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.w500, color: textColor()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  //color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.24,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: AstroCategory(),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                //..............Trending Astrologer................//
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      "Trending Astrologer",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.20,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: TrendingAstrologer(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //..............New Astrologer................//
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      "New Astrologer",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.20,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: NewAstrologer(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //..............Economical Astrologer................//
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      "Economical Astrologer",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.amber,
                  height: MediaQuery.of(context).size.height * 0.20,
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: EconomicalAstrologer(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //..............All Astrologer................//
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8),
                    child: Text(
                      "All Astrologer",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  //height: 165,
                  height: MediaQuery.of(context).size.height * 0.18,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.amber,
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 12),
                  child: const AllAstrologerList(),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
