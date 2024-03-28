import 'package:flutter/material.dart';

import 'report_kundli.dart';
import 'report_planetary_page.dart';

class NestedTbPage extends StatefulWidget {
  const NestedTbPage({super.key});

  @override
  State<NestedTbPage> createState() => _NestedTbPageState();
}

class _NestedTbPageState extends State<NestedTbPage>
    with TickerProviderStateMixin {
  TabController? _nController;
  @override
  void initState() {
    _nController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: TabBar(
              controller: _nController,
              labelPadding: const EdgeInsets.all(0),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.blue,
              indicatorWeight: 2,
              tabs: const [
                Tab(
                  text: 'General',
                ),
                Tab(
                  text: 'Remedies',
                ),
                Tab(
                  text: 'Dasha',
                ),
              ],
            ),
          ),
          Flexible(
            child: TabBarView(
              controller: _nController,
              children: const [
                DesTbPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//******* USER REPORT KUNDLI TAB *******//

class DesTbPage extends StatefulWidget {
  const DesTbPage({super.key});

  @override
  State<DesTbPage> createState() => _DesTbPageState();
}

class _DesTbPageState extends State<DesTbPage> with TickerProviderStateMixin {
  TabController? _dsController;
  @override
  void initState() {
    _dsController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          SizedBox(
            height: 35,
            child: TabBar(
              physics: const ClampingScrollPhysics(),
              indicatorSize: TabBarIndicatorSize.label,
              controller: _dsController,
              labelPadding: const EdgeInsets.all(0),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.blue,
              // indicatorWeight: 2,
              indicator: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              tabs: [
                Tab(
                  child: Container(
                    height: 35,
                    width: 73,
                    // width: MediaQuery.of(context).size.width*0.50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 215, 117),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      child: Text(
                        'General',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 5,),

                Tab(
                  child: Container(
                    height: 35,
                    // width: MediaQuery.of(context).size.width*0.50,
                    width: 83,

                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 248, 215, 117),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      child: Text(
                        'Planetary',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 5,),

                Tab(
                  child: Container(
                    height: 35,
                    width: 350,
                    // width: MediaQuery.of(context).size.width*0.90,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 215, 117),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Vimshottari\nDasha',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(width: 5,),

                Tab(
                  child: Container(
                    height: 35,
                    // width: MediaQuery.of(context).size.width*0.18,
                    width: 64,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 215, 117),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 17, right: 15, top: 9, bottom: 8),
                      child: Text('Yoga'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: TabBarView(
              controller: _dsController,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: ReportKundliPage(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: PlanetaryKundli(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
