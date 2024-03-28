import 'package:flutter/material.dart';

class DailyTarot extends StatefulWidget {
  const DailyTarot({super.key});

  @override
  State<DailyTarot> createState() => _DailyTarotState();
}

class _DailyTarotState extends State<DailyTarot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/tarot08.png",
                //images[index].toString(),
                height: 160,
                width: 85,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Image.asset(
                "assets/images/tarot09.png",
                //images[index].toString(),
                height: 160,
                width: 85,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Image.asset(
                "assets/images/tarot10.png",
                //images[index].toString(),
                height: 160,
                width: 85,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
