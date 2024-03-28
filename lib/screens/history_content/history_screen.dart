import 'package:astrology_app/screens/home_page.dart';
import 'package:flutter/material.dart';

import '../../utils/properties.dart';
import 'history_tab_view.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      extendBody: true,
      body: SizedBox(
        //height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 48, 5, 70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "History",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500, color: textColor()),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Flexible(child: HistoryTabContent()),
              const SizedBox(
                height: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
