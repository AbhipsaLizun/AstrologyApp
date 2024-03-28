import 'package:flutter/material.dart';
import 'history_list.dart';

class HistoryTabContent extends StatefulWidget {
  const HistoryTabContent({super.key});

  @override
  State<HistoryTabContent> createState() => _HistoryTabContentState();
}

class _HistoryTabContentState extends State<HistoryTabContent>
    with TickerProviderStateMixin {
  //late TabController _tabController;

  @override
  void initState() {
    super.initState();
    //_tabController = TabController(length: cat.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: cat.length,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        body: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            TabBar(
              indicator: const UnderlineTabIndicator(
                  insets: EdgeInsets.only(left: 20, right: 20),
                  borderSide: BorderSide(color: Colors.amber)),
              // isScrollable: true,
              tabs: cat.map<Widget>((TabList tab) {
                return Tab(
                  child: Text(
                    tab.name,
                    style: const TextStyle(fontSize: 12),
                  ),
                );
              }).toList(),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                Flexible(child: ChatListHistory()),
                Flexible(child: CallListHistory()),
                Flexible(child: VideoCallListHistory()),
                Flexible(child: LiveHistory())
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class TabList {
  final String name;

  TabList({
    required this.name,
  });
}

final List<TabList> cat = [
  TabList(
    name: "Chat",
  ),
  TabList(
    name: "Call",
  ),
  TabList(
    name: "Video call",
  ),
  // TabList(
  //   name: "Astroshop",
  // ),
  TabList(
    name: "Live",
  ),
];
