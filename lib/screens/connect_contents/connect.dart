import 'package:flutter/material.dart';
import '../../utils/properties.dart';
import 'chat_tab_view.dart';
//import 'tab_view.dart';

class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});

  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  @override
  Widget build(BuildContext context) {
    //var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        //height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 48, 0, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Connect",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w500, color: textColor()),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              //...........****TabView******............//

              // const Flexible(
              //     child: TabBarView(
              //   message: 'chat',
              // )),

              const Flexible(child: ChatTabScreen()),
              // ),
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
