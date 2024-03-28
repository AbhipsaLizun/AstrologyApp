import 'package:flutter/material.dart';

import '../../utils/properties.dart';
import 'daily_horoscope.dart';
import 'horoscope_signs.dart';

class HoroscopeScreen extends StatefulWidget {
  const HoroscopeScreen({super.key});

  @override
  State<HoroscopeScreen> createState() => _HoroscopeScreenState();
}

class _HoroscopeScreenState extends State<HoroscopeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: width,
        //height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 48, 0, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    " Daily Horoscope",
                    style: TextStyle(color: textColor(), fontSize: 21),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(height: 80, child: SunSignContent()),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Flexible(
                flex: 8,
                child: SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.95,
                    child: DailyHoroscopeData()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
