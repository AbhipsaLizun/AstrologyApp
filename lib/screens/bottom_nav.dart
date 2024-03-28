import 'dart:ui';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'connect_contents/connect.dart';
import 'dashboard.dart';
import 'history_content/history_screen.dart';
import 'live_contents/live.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 159, 158, 158),
                      width: 0.5)),
              child: FloatingNavbar(
                onTap: (int val) => setState(() => _index = val),
                currentIndex: _index,
                backgroundColor:
                    const Color.fromARGB(255, 57, 57, 57).withOpacity(0.6),
                itemBorderRadius: 0,
                borderRadius: 10,
                selectedItemColor: Colors.blue,
                selectedBackgroundColor: Colors.transparent,
                unselectedItemColor: Colors.white,
                fontSize: 10,
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                items: [
                  FloatingNavbarItem(icon: Icons.home, title: 'Home'),
                  FloatingNavbarItem(icon: Icons.explore, title: 'Connect'),
                  FloatingNavbarItem(
                      icon: Icons.chat_bubble_outline, title: 'Live'),
                  //FloatingNavbarItem(icon: Icons.settings, title: 'Shop'),
                  FloatingNavbarItem(icon: Icons.settings, title: 'History'),
                ],
              ),
            ),
          ),
        ),
      ),
      //If you want to show body behind the navbar, it should be true
      extendBody: true,
      body: bodyContainer(),
    );
  }

  Widget bodyContainer() {
    var pagesData = [
      const Dashboard(),
      const ConnectPage(),
      const LivePage(),
      const HistoryScreen(),
    ];
    return SizedBox(
      //color: Colors.amber,
      //width: double.infinity,
      //height: MediaQuery.of(context).size.height,
      //height: double.infinity,
      child: Center(child: pagesData.elementAt(_index)),
    );
  }
}
