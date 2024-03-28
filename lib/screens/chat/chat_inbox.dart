import 'package:astrology_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import '../../utils/properties.dart';
import 'chat_inbox_list.dart';

class ChatInboxScreen extends StatefulWidget {
  const ChatInboxScreen({super.key});

  @override
  State<ChatInboxScreen> createState() => _ChatInboxScreenState();
}

class _ChatInboxScreenState extends State<ChatInboxScreen> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 40, 8, 0),
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
                      "Chats",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                              fontWeight: FontWeight.w500, color: textColor()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 47,
                  child: TextField(
                    style: TextStyle(color: textColor()),
                    controller: searchController,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[700],
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        // suffixIcon: IconButton(
                        //   icon: const Icon(Icons.clear),
                        //   onPressed: () {
                        //     /* Clear the search field */
                        //   },
                        // ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)),
                        hintText: 'Search for messages or users',
                        hintStyle:
                            TextStyle(color: Colors.grey[500], fontSize: 14),
                        border: InputBorder.none),
                  ),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                // SizedBox(
                //height: MediaQuery.of(context).size.height * 0.79,
                // child:
                const Flexible(child: ChatInboxList())
                //),
                // const SizedBox(
                //   height: 5,
                // ),
              ],
            ),
          )),
    );
  }
}
