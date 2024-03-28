import 'package:flutter/material.dart';

class ProfileStoriesList extends StatefulWidget {
  const ProfileStoriesList({super.key});

  @override
  State<ProfileStoriesList> createState() => _ProfileStoriesListState();
}

class _ProfileStoriesListState extends State<ProfileStoriesList> {
  List<String> images = [
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
    "assets/images/profile_placeholder.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        child: ListView.builder(
            itemCount: images.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: 30,
                width: 65,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80.0),
                    border: Border.all(color: Colors.green, width: 2)),
                child: Center(child: Image.asset(images[index].toString())),
              );
            }),
      ),
    );
  }
}
