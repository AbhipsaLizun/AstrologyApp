import 'package:flutter/material.dart';

import '../profile/user_all_calss.dart';
import 'astakvarga.dart';
import 'basics_kundli_page.dart';
import 'chats_kundli_page.dart';
import 'dasha_kundli_page.dart';
import 'kp_kundli_Page.dart';
import 'nested_bar_page.dart';

class KundliPage extends StatefulWidget {
  const KundliPage({super.key});

  @override
  State<KundliPage> createState() => _KundliPageState();
}

class _KundliPageState extends State<KundliPage> with TickerProviderStateMixin {
  TabController? _controller;
  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 6,
          child: Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const HadLineP(text: 'Kundli'),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12) ),
                    child: TabBar(
                      controller: _controller,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.white,
                      labelStyle: const TextStyle(fontSize: 14),
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicator: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      tabs: cat.map<Widget>((TabList tab) {
                        return Tab(
                          child: Row(
                            children: [Text(tab.name)],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  // Container(
                  //   //height: 40,
                  //   //width: MediaQuery.of(context).size.height,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white.withOpacity(0.2),
                  //       borderRadius: BorderRadius.circular(12)),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(2.0),
                  //     child: TabBar(
                  //       // isScrollable: true,
                  //       controller: _controller,
                  //       //labelStyle: const TextStyle(fontSize: 13),
                  //       labelPadding: const EdgeInsets.all(1),
                  //       labelColor: Colors.white,
                  //       unselectedLabelColor: Colors.white,
                  //       indicatorColor: Colors.white,
                  //       indicatorWeight: 2,
                  //       indicator: BoxDecoration(
                  //           color: Colors.blue,
                  //           borderRadius: BorderRadius.circular(10)),
                  //       tabs: cat.map<Widget>((TabList tab) {
                  //         return Tab(
                  //             child: FittedBox(
                  //           child: Text(
                  //             tab.name,
                  //             style: TextStyle(fontSize: 12),
                  //           ),
                  //         ));
                  //       }).toList(),

                  //     ),
                  //   ),
                  // ),
                  Flexible(
                    child: TabBarView(
                      controller: _controller,
                      children: const [
                        BasicsKundliPage(),
                        ChatsKundliPage(),
                        KPKundliPage(),
                        AstakvargaTabPage(),
                        DashaKundliPage(),
                        NestedTbPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )

          // Scaffold(
          //   backgroundColor: Colors.black,
          //   body: SingleChildScrollView(
          //     child: Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Column(
          //         children: [
          //           const HadLineP(text: 'Kundli'),
          //           Container(
          //             height: 40,
          //             width: MediaQuery.of(context).size.height,
          //             decoration: BoxDecoration(
          //                 color: Colors.white.withOpacity(0.2),
          //                 borderRadius: BorderRadius.circular(15)),
          //             child: Padding(
          //               padding: const EdgeInsets.all(3),
          //               child: TabBar(
          //                 controller: _controller,
          //                 labelPadding: const EdgeInsets.all(0),
          //                 labelColor: Colors.white,
          //                 unselectedLabelColor: Colors.white,
          //                 indicatorColor: Colors.white,
          //                 indicatorWeight: 2,
          //                 indicator: BoxDecoration(
          //                     color: Colors.blue,
          //                     borderRadius: BorderRadius.circular(13)),
          //                 tabs: const [
          //                   Tab(
          //                     text: 'Basics',
          //                   ),
          //                   Tab(
          //                     text: 'Charts',
          //                   ),
          //                   Tab(
          //                     text: 'KP',
          //                   ),
          //                   Tab(
          //                     text: 'Ashtakvarga',
          //                   ),
          //                   Tab(
          //                     text: 'Dasha',
          //                   ),
          //                   Tab(
          //                     text: 'Report',
          //                   ),
          //                 ],
          //               ),
          //             ),
          //           ),
          //           SizedBox(
          //             width: double.maxFinite,
          //             height: double.maxFinite,
          //             child: TabBarView(
          //               controller: _controller,
          //               children: const [
          //                 SizedBox(height: 200, child: BasicsKundliPage()),
          //                 ChatsKundliPage(),
          //                 KPKundliPage(),
          //                 AstakvargaTabPage(),
          //                 DashaKundliPage(),
          //                 NestedTbPage(),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
          ),
    );
  }
}

class TabList {
  final String name;
  //final Icon icon;

  TabList({
    // required this.icon,
    required this.name,
  });
}

final List<TabList> cat = [
  TabList(
    name: "Basics",
  ),
  TabList(
    name: "Charts",
  ),
  TabList(
    name: "KP",
  ),
  TabList(
    name: "Ashtakvarga",
  ),
  TabList(
    name: "Dasha",
  ),
  TabList(
    name: "Report",
  ),
];
