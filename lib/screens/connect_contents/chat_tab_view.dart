import 'package:flutter/material.dart';
import '../../utils/properties.dart';
import 'astrologers_list.dart';

class ChatTabScreen extends StatefulWidget {
  const ChatTabScreen({super.key});

  @override
  State<ChatTabScreen> createState() => _ChatTabScreenState();
}

class _ChatTabScreenState extends State<ChatTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Text(
                    "₹ 0",
                    style: TextStyle(color: textColor()),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.filter_alt_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            //Container(
            // padding: const EdgeInsets.only(top: 3),
            //color: Colors.amber,
            //height: MediaQuery.of(context).size.height,
            //child:
            const Flexible(child: SubTabView()),
            // ),
          ],
        ),
      ),
    );
  }
}

class SubTabView extends StatefulWidget {
  const SubTabView({super.key});

  @override
  State<SubTabView> createState() => _SubTabViewState();
}

class _SubTabViewState extends State<SubTabView> with TickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: cat.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          children: [
            TabBar(
              controller: _nestedTabController,
              labelColor: iconColor(),
              unselectedLabelColor: textColor(),
              labelStyle: const TextStyle(fontSize: 15),
              isScrollable: true,
              indicatorColor: Colors.amber,
              tabs: cat.map<Widget>((TabList tab) {
                return Tab(
                  child: Row(
                    children: [
                      tab.icon,
                      const SizedBox(
                        width: 4,
                      ),
                      Text(tab.name)
                    ],
                  ),
                );
              }).toList(),
            ),
            Expanded(
              child:
                  TabBarView(controller: _nestedTabController, children: const [
                Flexible(child: AstrologerList()),
                AstrologerList(),
                AstrologerList(),
                AstrologerList(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class TabList {
  final String name;
  final Icon icon;

  TabList({
    required this.icon,
    required this.name,
  });
}

final List<TabList> cat = [
  TabList(
    icon: const Icon(
      Icons.dashboard,
      color: Colors.white,
    ),
    name: "All",
  ),
  TabList(
    icon: const Icon(
      Icons.favorite,
      color: Colors.red,
    ),
    name: "Love",
  ),
  TabList(
    icon: const Icon(
      Icons.cases_rounded,
      color: Colors.blue,
    ),
    name: "Career",
  ),
  TabList(
    icon: const Icon(
      Icons.celebration_rounded,
      color: Colors.green,
    ),
    name: "Marriage",
  ),
];
