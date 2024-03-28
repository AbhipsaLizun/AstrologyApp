import 'package:astrology_app/screens/Wallet/transaction_list.dart';
import 'package:astrology_app/screens/history_content/history_screen.dart';
import 'package:astrology_app/screens/setting_page.dart';
import 'package:astrology_app/screens/support/customer_support.dart';
import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/chat/chat_inbox.dart';
import '../screens/profile/user_profile_page.dart';

class MenuContent extends StatelessWidget {
  const MenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //shrinkWrap: true,
          //physics: const NeverScrollableScrollPhysics(),
          children: [
            Text(
              "JyotishBani",
              style: GoogleFonts.elsie(
                  color: textColor(),
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const UserProfileScreen())));
              },
              child: SizedBox(
                height: 60,
                // color: Colors.green,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(fit: StackFit.loose, children: [
                      // SizedBox(
                      //   height: 20,
                      // ),
                      //............profile img background...................//
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: Container(
                            height: 40,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.grey[600],
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 5,
                        child: SizedBox(
                          // color: Colors.amber,
                          height: 55,
                          width: 50,
                          child: Image.asset(
                            "assets/images/profile.png",
                            // height: 55,
                            // width: 50,
                          ),
                        ),
                      )
                    ]),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              color: textColor(),
                              fontSize: 13,
                              letterSpacing: 0.5),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "895365789",
                          style: TextStyle(
                              color: textColor(),
                              fontSize: 13,
                              letterSpacing: 0.5),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                "Home",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4, horizontal: 0),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text(
                "Wallet",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Chat History",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.chat,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChatInboxScreen()));
              },
            ),
            ListTile(
              title: Text(
                "History",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.history,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HistoryScreen()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Transactions",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.history,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Transaction()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Get Report",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.content_paste_search_outlined,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            ListTile(
              title: Text(
                "Customer Support",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.support_agent,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CustomerSupport()),
                );
              },
            ),
            ListTile(
              title: Text(
                "Chat with Astrologer",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            ListTile(
              title: Text(
                "Chat with Counseller",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.content_paste_search_outlined,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            ListTile(
              title: Text(
                "My followings",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            ListTile(
              title: Text(
                "Free services",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            ),
            ListTile(
              title: Text(
                "Settings",
                style:
                    TextStyle(color: textColor(), fontWeight: FontWeight.w300),
              ),
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              horizontalTitleGap: 0,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingPage()),
                );
              },
            )
          ]),
    );
  }
}
