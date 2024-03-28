// ignore: file_names
import 'package:flutter/material.dart';
import 'readings.dart';

class HoroscopeStudy extends StatefulWidget {
  const HoroscopeStudy({super.key});

  @override
  State<HoroscopeStudy> createState() => _HoroscopeStudyState();
}

class _HoroscopeStudyState extends State<HoroscopeStudy> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Weekly",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Monthly",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Yearly",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ]),
            Flexible(
              child: TabBarView(children: [
                ReadingScreen(),
                ReadingScreen(),
                ReadingScreen()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
