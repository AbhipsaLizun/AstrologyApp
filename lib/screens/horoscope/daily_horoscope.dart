import 'package:astrology_app/screens/horoscope/horoscope_content.dart';
import 'package:flutter/material.dart';

class DailyHoroscopeData extends StatefulWidget {
  const DailyHoroscopeData({super.key});

  @override
  State<DailyHoroscopeData> createState() => _DailyHoroscopeDataState();
}

class _DailyHoroscopeDataState extends State<DailyHoroscopeData>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            TabBar(
                isScrollable: false,
                controller: _tabController,
                tabs: const [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Yesterday",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "31.06.2023",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tomorrow",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ]),
            const Flexible(
              child: TabBarView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    HoroscopeContentScreen(),
                    HoroscopeContentScreen(),
                    HoroscopeContentScreen(),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
