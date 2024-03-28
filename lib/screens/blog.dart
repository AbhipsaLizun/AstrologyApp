import 'package:astrology_app/utils/properties.dart';
import 'package:flutter/material.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  List<String> images = [
    "assets/images/blog1.png",
    "assets/images/blog2.png",
    "assets/images/blog3.png",
    "assets/images/blog4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: blogList.length,
            itemBuilder: (context, index) => BlogContent(
                image: blogList[index].image, title: blogList[index].title)),
      ),
    );
  }
}

class Blog {
  late final String image, title;

  Blog({
    required this.image,
    required this.title,
  });
}

List<Blog> blogList = [
  Blog(image: "assets/images/blog1.png", title: "Sun-Mercury Rahu Conjuction"),
  Blog(image: "assets/images/blog4.png", title: "Sun-Mercury Rahu Conjuction"),
  Blog(image: "assets/images/blog3.jpg", title: "Sun-Mercury Rahu Conjuction"),
  Blog(image: "assets/images/blog2.png", title: "Sun-Mercury Rahu Conjuction"),
];

class BlogContent extends StatelessWidget {
  const BlogContent({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  //color: Colors.amber
                ),
                child: Image.asset(
                  image,
                  height: 100,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(color: textColor(), fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
